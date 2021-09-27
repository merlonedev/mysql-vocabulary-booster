SELECT
    (SELECT 
            UPPER(CONCAT(FIRST_NAME, ' ', LAST_NAME))
        FROM
            hr.employees
        WHERE
            hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) AS 'Nome completo',
    START_DATE AS 'Data de início',
    (SELECT 
            SALARY
        FROM
            hr.employees
        WHERE
            hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) AS 'Salário'
FROM
    hr.job_history
WHERE
    MONTH(start_date) IN (1 , 2, 3)
ORDER BY 1 , 2
