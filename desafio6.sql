SELECT 
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
  j.JOB_TITLE AS `Cargo`,
  e.HIRE_DATE AS `Data de início do cargo`,
  d.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS h
JOIN hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
JOIN hr.departments AS d ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY `Nome completo`, `Cargo`;
