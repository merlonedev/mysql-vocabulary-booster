SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
jobs.JOB_TITLE AS 'Cargo', jobH.START_DATE AS 'Data de início do cargo',
dep.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobH
INNER JOIN hr.employees AS emp
ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID
INNER JOIN hr.jobs AS jobs
ON jobH.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS dep
ON jobH.DEPARTMENT_ID = dep.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo`;

