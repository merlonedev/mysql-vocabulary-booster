SELECT 
    CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    jobh.START_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS em
        INNER JOIN
    hr.job_history AS jobh ON em.EMPLOYEE_ID = jobh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jobs ON jobh.JOB_ID = jobs.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = jobh.DEPARTMENT_ID
ORDER BY CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) DESC , jobs.JOB_TITLE;
