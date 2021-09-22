SELECT 
  CONCAT (e.first_name," ", e.last_name) AS "Nome completo",
  j.JOB_TITLE AS "Cargo",
  h.START_DATE AS "Data de início do cargo",
  d.DEPARTMENT_ID AS "Departamento"
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID

ORDER BY CONCAT (e.first_name," ", e.last_name), j.JOB_TITLE;
