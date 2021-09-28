SELECT
CONCAT(N.first_name, ' ', N.last_name) AS `Nome completo`,
C.job_title AS `Cargo`,
I.start_date AS `Data de início do cargo`,
D.department_name AS `Departamento`
FROM
hr.job_history I
INNER JOIN hr.employees N
ON I.employee_id = N.employee_id
INNER JOIN hr.jobs C
ON I.job_id = C.job_id
INNER JOIN hr.departments D
ON I.department_id = D.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
