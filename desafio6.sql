SELECT 
    CONCAT(e.FIRST_NAME, '', e.LAST_NAME) AS `Nome completo`,
    (SELECT 
            JOB_TITLE
        FROM
            jobs AS j
        WHERE
            js.JOB_ID = j.JOB_ID) AS 'Cargo',
    js.START_DATE AS `Data de início do cargo`,
    d.DEPARTMENT_NAME AS Departamento
FROM
    job_history AS js,
    employees AS e,
    departments AS d
ORDER BY `Nome completo` DESC , Cargo;
