SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            jobs AS job
        WHERE
            job.JOB_ID = E.JOB_ID) AS Cargo,
    E.HIRE_DATE AS `Data de início do cargo`,
    (SELECT 
            DEPARTMENT_NAME
        FROM
            departments AS dpt
        WHERE
            dpt.DEPARTMENT_ID = E.DEPARTMENT_ID) AS Departamento
FROM
    employees AS E;
