SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS `Nome completo`,
    hist.START_DATE AS `Data de início`,
    emp.SALARY AS Salário
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE
    MONTH(hist.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo`, hist.START_DATE;
