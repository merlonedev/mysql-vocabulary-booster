SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(START_DATE, '%d/%m/%y') AS 'Data de início',
    DATE_FORMAT(END_DATE, '%d/%m/%y') AS 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.job_history AS jh
        JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
