SELECT CONCAT(employees.first_name , ' ' , employees.last_name) AS `Nome completo`,
jobs.job_title AS `Cargo`,
jobHistory.start_date AS `Data de início do cargo`,
departments.department_name AS `Departamento`
FROM hr.job_history AS jobHistory
INNER JOIN hr.employees AS employees
ON jobHistory.employee_id = employees.employee_id
INNER JOIN hr.jobs AS jobs
ON jobHistory.job_id = jobs.job_id
INNER JOIN hr.departments AS departments
ON jobHistory.department_id = departments.department_id
ORDER BY CONCAT(employees.first_name , ' ' , employees.last_name) DESC, jobs.job_title;
