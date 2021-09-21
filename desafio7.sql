SELECT 
    UPPER(CONCAT(employees.FIRST_NAME,
                    ' ',
                    employees.LAST_NAME)) AS 'Nome completo',
    job_history.START_DATE AS 'Data de início',
    employees.SALARY AS 'Salário'
FROM
    employees AS employees
        JOIN
    job_history AS job_history ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo` , `Data de início` ASC;
