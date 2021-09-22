USE hr;

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
    dep.DEPARTMENT_NAME AS 'Departamento',
    job.JOB_TITLE AS 'Cargo'
FROM
	hr.job_history jh
		JOIN
    hr.employees emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    hr.departments dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
        JOIN
    hr.jobs job ON job.JOB_ID = jh.JOB_ID
WHERE
    emp.EMAIL LIKE concat(email, '%')
ORDER BY 2 , 3;
END $$

DELIMITER ;
