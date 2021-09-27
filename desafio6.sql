SELECT
  CONCAT(b.first_name, ' ', b.last_name) AS `Nome completo`,
  c.job_title AS `Cargo`,
  a.start_date AS `Data de início do cargo`,
  d.department_name AS `Departamento`
FROM
  job_history AS a
  INNER JOIN employees AS b ON a.employee_id = b.employee_id
  INNER JOIN jobs AS c ON a.job_id = c.job_id
  INNER JOIN departments AS d ON a.department_id = d.department_id
ORDER BY
  `Nome Completo` DESC,
  `Cargo`;
