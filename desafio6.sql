SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees AS E
        WHERE
            J.EMPLOYEE_ID = E.EMPLOYEE_ID) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            jobs.JOB_ID = J.JOB_ID) AS `Cargo`,
    START_DATE AS `Data de início do cargo`,
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments AS D
        WHERE
            D.DEPARTMENT_ID = J.DEPARTMENT_ID) AS `Departamento`
FROM
    hr.job_history AS J
WHERE START_DATE > 0
ORDER BY `Nome completo` DESC , `Cargo`;
