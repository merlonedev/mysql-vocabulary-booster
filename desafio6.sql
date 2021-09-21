SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS 'Cargo',
    h.start_date AS 'Data de início do cargo',
    d.department_name AS 'Departamento'
FROM
    hr.job_history AS h
        JOIN
    hr.employees AS e ON e.employee_id = h.employee_id
        JOIN
    hr.jobs AS j ON j.job_id = h.job_id
        JOIN
    hr.departments AS d ON d.department_id = h.department_id
ORDER BY `Nome completo` DESC , Cargo;
