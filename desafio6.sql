SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
    j.job_title AS Cargo,
    jh.start_date AS `Data de início do cargo`,
    d.department_name AS Departamento
FROM
    hr.job_history AS jh
        JOIN
	hr.employees AS e ON e.employee_id = jh.employee_id
        JOIN
	hr.departments AS d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
        JOIN
    hr.jobs AS j ON j.JOB_ID = jh.job_id
ORDER BY `Nome completo` desc, Cargo;
