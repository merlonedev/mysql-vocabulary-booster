SELECT 
UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
jh.start_date AS `Data de início`,
e.salary AS `Salário`
FROM
hr.employees AS e 
JOIN
hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
MONTH(jh.start_date) BETWEEN 1 AND 3
ORDER BY `Nome completo`, `Data de início`;
