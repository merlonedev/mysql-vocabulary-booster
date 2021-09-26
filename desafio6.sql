SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            JOB_ID = e.JOB_ID) AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            DEPARTMENT_ID = e.DEPARTMENT_ID) AS Departamento
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON e.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
