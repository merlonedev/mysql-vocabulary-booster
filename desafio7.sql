SELECT 
    UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS 'Nome completo',
    jobHistory.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    hr.employees AS employees
        JOIN
    hr.job_history AS jobHistory ON employees.EMPLOYEE_ID = jobHistory.EMPLOYEE_ID
WHERE
    MONTH(jobHistory.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` , DATE(`Data de início`);
