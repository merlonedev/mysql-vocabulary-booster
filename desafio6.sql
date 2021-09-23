SELECT 
    (SELECT 
            CONCAT(first_name, ' ', last_name)
        FROM
            employees AS e
        WHERE
            jh.employee_id = e.employee_id) AS 'Nome completo',
    (SELECT 
            j.job_title
        FROM
            jobs AS j
        WHERE
            j.job_id = jh.job_id) AS 'Cargo',
    start_date AS 'Data de início do cargo',
    (SELECT 
            d.DEPARTMENT_NAME
        FROM
            hr.departments AS d
        WHERE
            jh.DEPARTMENT_ID = d.DEPARTMENT_ID) AS 'Departamento'
FROM
    job_history AS jh
WHERE character_length(job_id) > 0
ORDER BY `Nome completo` DESC , Cargo;
