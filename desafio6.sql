SELECT 
    CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            JOB_ID = t1.JOB_ID) AS `Cargo`,
    t1.START_DATE AS `Data de início do cargo`,
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            DEPARTMENT_ID = t1.DEPARTMENT_ID) AS `Departamento`
FROM
    hr.job_history AS t1
        INNER JOIN
    hr.employees AS t2 ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
ORDER BY `Nome completo` DESC , `Cargo` ASC;
