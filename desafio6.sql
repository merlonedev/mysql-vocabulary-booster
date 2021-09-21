SELECT
CONCAT(FIRST_NAME, ' ',LAST_NAME) AS 'Nome completo', 
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo', 
DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs AS j
INNER JOIN hr.job_history AS jh
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.employees AS e
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments AS d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;
