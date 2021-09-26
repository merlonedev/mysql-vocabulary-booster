SELECT
CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome completo`,
t2.job_title AS `Cargo`,
t1.hire_date AS `Data de início do cargo`,
t3.department_name AS `Departamento`
FROM
hr.employees t1
INNER JOIN hr.jobs t2
ON t1.job_id = t2.job_id
LEFT JOIN hr.departments t3
ON t1.department_id = t3.department_id
ORDER BY `Nome completo`, `Cargo`;
