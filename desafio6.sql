SELECT 
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    history.START_DATE AS 'Data de início do cargo',
    department.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS employees
        INNER JOIN
            hr.job_history AS history
            ON employees.EMPLOYEE_ID = history.EMPLOYEE_ID
        INNER JOIN
            hr.jobs AS jobs 
            ON history.JOB_ID = jobs.JOB_ID
        INNER JOIN
            hr.departments AS department 
            ON department.DEPARTMENT_ID = history.DEPARTMENT_ID
ORDER BY 
    CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) DESC ,
    jobs.JOB_TITLE;
