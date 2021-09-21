SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
    j.job_title AS 'Cargo',
    h.start_date AS 'Data de início do cargo',
    d.department_name AS 'Departamento'
FROM
    hr.job_history AS h
        JOIN
    hr.employees AS e ON h.employee_id = e.employee_id
        JOIN
    hr.jobs AS j ON h.job_id = j.job_id
        JOIN
    hr.departments AS d ON h.department_id = d.department_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC , j.job_title ASC;
