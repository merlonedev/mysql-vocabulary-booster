SELECT
CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome completo`,
t2.job_title AS `Cargo`,
t3.start_date AS `Data de início do cargo`,
t4.department_name AS `Departamento`
FROM
hr.employees t1
INNER JOIN hr.jobs t2
ON t1.job_id = t2.job_id
INNER JOIN hr.job_history t3
ON t1.employee_id = t3.employee_id
INNER JOIN hr.departments t4
ON t1.department_id = t4.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
