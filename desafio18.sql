SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(jh.START_DATE, '%d/%m/%y') AS 'Data de início',
    DATE_FORMAT(jh.END_DATE, '%d/%m/%y') AS 'Data de rescisão',
    ROUND(TIMESTAMPDIFF(DAY,
                jh.START_DATE,
                jh.END_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    employees e
        JOIN
    job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) , ROUND(TIMESTAMPDIFF(DAY,
            jh.START_DATE,
            jh.END_DATE) / 365,
        2);
