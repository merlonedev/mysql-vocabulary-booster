SELECT 
    UCASE(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    job_h.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    employees AS emp
        INNER JOIN
    job_history AS job_h ON emp.EMPLOYEE_ID = job_h.EMPLOYEE_ID
WHERE
    MONTH(job_h.start_date) IN (01 , 02, 03)
ORDER BY emp.first_name ASC , job_h.START_DATE ASC
