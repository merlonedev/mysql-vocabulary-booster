SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) AS 'Nome completo',
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            hr.jobs.JOB_ID = hr.job_history.JOB_ID) AS 'Cargo',
    START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID) AS 'Departamento'
FROM
    hr.job_history
WHERE EMPLOYEE_ID <> 0
ORDER BY 1 DESC , 2;
