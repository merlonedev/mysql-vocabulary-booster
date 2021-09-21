SELECT CONCAT(emp.FIRST_NAME,' ', emp.LAST_NAME) AS 'Nome completo', job.JOB_TITLE AS 'Cargo', jobH.START_DATE AS 'Data de início do cargo',
deprt.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS jobH
INNER JOIN hr.jobs AS job
ON jobH.JOB_ID = job.JOB_ID
INNER JOIN hr.departments AS deprt
ON jobH.DEPARTMENT_ID = deprt.DEPARTMENT_ID
INNER JOIN hr.employees AS emp
ON jobH.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
