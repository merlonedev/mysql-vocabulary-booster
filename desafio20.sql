DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
	SELECT
		CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
        dep.DEPARTMENT_NAME AS Departamento,
        j.JOB_TITLE AS Cargo
	FROM hr.job_history AS jh
	JOIN
		hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
	JOIN
		hr.jobs AS j ON j.JOB_ID = jh.JOB_ID
	JOIN
		hr.departments AS dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
	WHERE emp.EMAIL = email
    ORDER BY 2, 3;
END $$

DELIMITER ;
