SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') 'Data de início',
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, START_DATE) / 365, 2) 'Anos trabalhados'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
