DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(20))
BEGIN
SELECT
CONCAT(e.first_name, + ' ', + e.last_name) AS "Nome completo",
d.department_name AS "Departamento",
j.job_title AS "Cargo"
FROM
hr.job_history AS jo
JOIN hr.employees AS e ON e.employee_id = jo.employee_id AND e.email = email
JOIN hr.jobs AS j ON jo.job_id = j.job_id
JOIN hr.departments AS d ON jo.department_id = d.department_id
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
CALL exibir_historico_completo_por_funcionario('JTAYLOR');
CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
