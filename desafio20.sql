USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(200))
BEGIN
SELECT 
	CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
	d.department_name AS `Departamento`,
	j.job_title AS `Cargo`
FROM
	hr.job_history AS jh
		JOIN
	hr.employees AS e ON jh.employee_id = e.employee_id
		JOIN
	hr.departments AS d ON jh.department_id = d.department_id
		JOIN
	hr.jobs AS j ON jh.job_id = j.job_id
WHERE
	e.email = email
ORDER BY `Departamento` , `Cargo`;
END $$

DELIMITER ;
