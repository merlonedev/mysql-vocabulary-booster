SELECT UCASE(CONCAT(employees.first_name , ' ' , employees.last_name)) AS `Nome completo`,
jobHistory.start_date AS `Data de início`,
employees.salary AS `Salário`
FROM hr.job_history AS jobHistory
INNER JOIN hr.employees AS employees
ON jobHistory.employee_id = employees.employee_id
WHERE MONTH(jobHistory.start_date) IN (1, 2, 3)
ORDER BY CONCAT(employees.first_name , ' ' , employees.last_name), jobHistory.start_date;
