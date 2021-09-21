SELECT 
    UPPER(CONCAT(employees.FIRST_NAME,
                    ' ',
                    employees.LAST_NAME)) AS 'Nome completo',
    job_history.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
     job_history AS job_history
        JOIN
     employees AS employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(job_history.START_DATE) = 01 
OR MONTH(job_history.START_DATE) = 02 
OR MONTH(job_history.START_DATE) = 03
ORDER BY `Nome completo` , `Data de início` ASC;
