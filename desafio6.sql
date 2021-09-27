SELECT concat(employees.FIRST_NAME, ' ' ,employees.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS Cargo,
s.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS s
INNER JOIN hr.employees AS employees ON s.employee_id = employees.employee_id
INNER JOIN hr.jobs AS j ON s.job_id = j.job_id
INNER JOIN hr.departments AS d ON s.department_id = d.department_id
ORDER BY `Nome completo` DESC, Cargo;
