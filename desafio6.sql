SELECT * FROM hr.job_history;
SELECT * FROM hr.employees;
SELECT * FROM hr.jobs;
SELECT * FROM hr.departments;

SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome Completo`,
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
            DEPARTMENT_ID = jh.DEPARTMENT_ID)
FROM
    hr.job_history AS jh
ORDER BY `Nome Completo` DESC , Cargo;
