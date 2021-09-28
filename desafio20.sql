USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT 
	CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
	d.department_name AS  'Departamento',
	j.job_title AS 'Cargo'
FROM job_history AS jh
	JOIN employees AS e ON jh.employee_id = e.employee_id
	JOIN departments AS d ON d.department_id = jh.department_id
	JOIN jobs AS j ON j.job_id = jh.job_id
	WHERE e.email like 'NKOCHHAR'
	ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
 