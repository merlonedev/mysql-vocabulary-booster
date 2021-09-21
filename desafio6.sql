SELECT 
    CONCAT(i.FIRST_NAME, ' ', i.LAST_NAME) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    h.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    job_history AS h
        INNER JOIN
    jobs AS j ON j.JOB_ID = h.JOB_ID
        INNER JOIN
    employees AS i ON i.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    departments AS d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC , Cargo;
