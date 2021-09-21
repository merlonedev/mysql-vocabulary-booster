SELECT 
    CONCAT(UCASE(emp.FIRST_NAME), ' ', UCASE(emp.LAST_NAME)) AS 'Nome completo',
    jobH.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.employees AS emp
    INNER JOIN hr.job_history AS jobH ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE MONTH(jobH.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
