SELECT CONCAT (first_name,' ',last_name) AS 'Nome completo',
JOB_TITLE AS 'Cargo',
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS T1
INNER JOIN hr.employees AS T2
ON T1.employee_id = T2.employee_id
INNER JOIN hr.jobs AS T3
ON T2.job_id = T3.job_id
INNER JOIN hr.departments AS T4
ON T2.department_id = T4.department_id
ORDER BY CONCAT (first_name,' ',last_name) DESC, JOB_TITLE ASC;
