SELECT CONCAT (T2.first_name,' ',T2.last_name) AS 'Nome completo',
T3.JOB_TITLE AS 'Cargo',
T1.START_DATE AS 'Data de início do cargo',
T4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS T1
INNER JOIN hr.employees AS T2
ON T1.employee_id = T2.employee_id
INNER JOIN hr.jobs AS T3
ON T1.job_id = T3.job_id
INNER JOIN hr.departments AS T4
ON T1.department_id = T4.department_id
ORDER BY CONCAT (T2.first_name,' ',T2.last_name) DESC, T3.JOB_TITLE ASC;

