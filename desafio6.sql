SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.JOB_TITLE AS 'Cargo',
    jh.START_DATE AS 'Data de início do cargo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            departments AS d
        WHERE
            jh.DEPARTMENT_ID = d.DEPARTMENT_ID) AS 'Departamento'
FROM
    job_history AS jh
	INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    INNER JOIN
    jobs AS j ON j.JOB_ID = jh.JOB_ID
    ORDER BY `Nome completo` DESC, Cargo ASC;
