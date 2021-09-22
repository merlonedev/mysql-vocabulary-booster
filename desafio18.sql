SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
            2) AS 'Anos trabalhados'
FROM
    hr.employees emp
        JOIN
    hr.job_history jh ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY 1 , 4;
