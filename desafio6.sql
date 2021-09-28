SELECT 
    concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) as 'Nome completo',
    jobs.JOB_TITLE as 'Cargo',
    job_history.START_DATE as 'Data de início do cargo',
    departments.DEPARTMENT_NAME as 'Departamento'
FROM
    hr.job_history AS job_history
INNER JOIN
    hr.employees AS employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
INNER JOIN
	hr.departments as departments
ON job_history.DEPARTMENT_ID = departments.DEPARTMENT_ID
INNER JOIN
	hr.jobs as jobs
ON job_history.JOB_ID = jobs.JOB_ID
order by concat(employees.FIRST_NAME, ' ', employees.LAST_NAME) desc, jobs.JOB_TITLE asc;
