DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
  SELECT
	CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
	D.DEPARTMENT_NAME AS `Departamento`,
	J.JOB_TITLE AS `Cargo`
	FROM hr.employees E
    JOIN hr.job_history JH
      ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
    JOIN hr.departments D
      ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
    JOIN hr.jobs J
      ON JH.JOB_ID = J.JOB_ID
    WHERE E.EMAIL = email
    ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
