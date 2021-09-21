SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            JOB_ID = jh.JOB_ID) AS Cargo,
    START_DATE AS `Data de início do cargo`,
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            DEPARTMENT_ID = jh.DEPARTMENT_ID) AS Departamento
FROM
    hr.job_history AS jh
WHERE EMPLOYEE_ID <> 0
ORDER BY `Nome completo` DESC , Cargo;
