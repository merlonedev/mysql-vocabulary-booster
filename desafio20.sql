drop procedure if exists exibir_historico_completo_por_funcionario;

USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(in selectedEmail varchar(100))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME as Departamento,
j.JOB_TITLE as Cargo
FROM
    hr.employees as e
    inner join hr.job_history as jh on e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    inner join hr.departments as d on jh.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join hr.jobs as j on jh.JOB_ID = j.JOB_ID
where EMAIL = selectedEmail
order by Departamento, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
