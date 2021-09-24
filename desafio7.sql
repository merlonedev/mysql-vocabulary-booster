SELECT 
    UCASE(CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME)) AS `Nome completo`,
    job_history.START_DATE AS `Data de início`,
    employees.SALARY AS Salário
FROM
    hr.job_history AS job_history
        INNER JOIN
    hr.employees AS employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jobs ON jobs.JOB_ID = job_history.JOB_ID
WHERE
    MONTH(job_history.START_DATE) IN (01 , 02, 03)
ORDER BY `Nome completo` , `Data de início`;
