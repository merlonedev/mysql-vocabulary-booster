SELECT
UCASE(CONCAT(N.first_name, ' ', N.last_name)) AS `Nome completo`,
D.start_date AS `Data de início`,
N.salary AS `Salário`
FROM
hr.employees N
INNER JOIN (SELECT * FROM hr.job_history WHERE MONTH(start_date) BETWEEN 1 AND 3) D
ON N.employee_id = D.employee_id
ORDER BY `Nome completo`, `Data de início`;
