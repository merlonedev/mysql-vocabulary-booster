SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
    j.job_title as Cargo,
    jh.start_date as `Data de início do cargo`,
    d.department_name as Departamento
FROM
    employees AS e
        JOIN
    job_history AS jh ON e.employee_id = jh.employee_id
		JOIN
    jobs AS j ON jh.job_id = j.job_id
        JOIN
    departments AS d ON jh.department_id = d.department_id
ORDER BY `Nome Completo` DESC, Cargo;
