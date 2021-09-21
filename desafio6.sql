-- SELECT * FROM hr.employees;
SELECT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS `Cargo`,
START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history
INNER JOIN employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN jobs ON jobs.JOB_ID = job_history.JOB_ID
INNER JOIN departments ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
