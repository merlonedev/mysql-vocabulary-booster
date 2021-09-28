SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
jh.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees emp
INNER JOIN hr.job_history jh
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
INNER JOIN hr.departments d
ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) DESC, j.JOB_TITLE;
