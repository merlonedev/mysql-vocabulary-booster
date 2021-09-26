SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS Cargo,
    jh.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
        INNER JOIN 
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS j ON j.job_id = jh.job_id
        INNER JOIN
    hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
