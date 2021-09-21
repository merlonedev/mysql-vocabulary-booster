DELIMITER $$

CREATE PROCEDURE
	exibir_historico_completo_por_funcionario(email varchar(30))
BEGIN
	select
	concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) as `Nome completo`,
    d.DEPARTMENT_NAME as Departamento,
    j.JOB_TITLE as Cargo
	from
		employees as emp
	join
		job_history as jh
	on
		emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
	join
		departments as d
	on
		jh.DEPARTMENT_ID = d.DEPARTMENT_ID
	join
		jobs as j
	on
		j.JOB_ID = jh.JOB_ID
	WHERE 
		emp.EMAIL =  email
	ORDER BY Cargo;
END

$$

DELIMITER ;
