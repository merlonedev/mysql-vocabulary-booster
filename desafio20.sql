USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employeeEmail VARCHAR(100))
BEGIN
	SELECT
		CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
		(SELECT
			D.DEPARTMENT_NAME
		FROM
			hr.departments AS D
		WHERE
			D.DEPARTMENT_ID = JH.DEPARTMENT_ID) AS `Departamento`,
		(SELECT
			J.JOB_TITLE
		FROM
			hr.jobs AS J
		WHERE
			J.JOB_ID = JH.JOB_ID) AS `Cargo`
	FROM
		hr.employees AS E
			INNER JOIN
		hr.job_history AS JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
	WHERE
		E.EMAIL = employeeEmail
	ORDER BY
		`Departamento`,
        `Cargo`;
END $$
DELIMITER ;
