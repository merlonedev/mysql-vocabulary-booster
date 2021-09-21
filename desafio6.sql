SELECT CONCAT(first_name, ' ', last_name) AS `Nome completo`,
j.JOB_TITLE AS `Cargo`,
jh.START_DATE AS `Data de início do cargo`,
d.DEPARTMENT_NAME AS `Departamento`
FROM employees AS e
INNER JOIN job_history AS jh
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN departments AS d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN jobs AS j
ON j.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` DESC, `Cargo`;