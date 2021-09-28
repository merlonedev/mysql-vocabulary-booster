SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
sd.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS sd
JOIN hr.employees AS e ON sd.EMPLOYEE_ID = e.EMPLOYEE_ID
JOIN hr.jobs AS j ON sd.JOB_ID = j.JOB_ID
JOIN hr.departments AS d ON sd.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
