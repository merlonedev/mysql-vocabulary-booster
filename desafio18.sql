SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(TIMESTAMPDIFF(DAY,
                jh.START_DATE,
                jh.END_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    job_history jh
        INNER JOIN
    employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , TIMESTAMPDIFF(YEAR,
    jh.START_DATE,
    jh.END_DATE);
