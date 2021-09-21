SELECT
CONCAT(employees.FIRST_NAME, " ", employees.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS Cargo,
job_history.START_DATE AS 'Data de início do cargo',
departments.DEPARTMENT_NAME AS 'Departamento'
FROM employees AS employees
JOIN job_history AS job_history
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
JOIN jobs AS jobs
ON jobs.JOB_ID = job_history.JOB_ID
JOIN departments AS departments
ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo ASC;
