SELECT
UCASE(CONCAT(t1.first_name, ' ', t1.last_name)) AS `Nome completo`,
t2.start_date AS `Data de início`,
t1.salary AS `Salário`
FROM
hr.employees t1
INNER JOIN (SELECT * FROM hr.job_history WHERE MONTH(start_date) BETWEEN 1 AND 3) t2
ON t1.employee_id = t2.employee_id
ORDER BY `Nome completo`, `Data de início`;
