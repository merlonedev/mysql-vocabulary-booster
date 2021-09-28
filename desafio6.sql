SELECT
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
JOB_TITLE AS Cargo,
START_DATE AS 'Data de início do cargo',
DEPARTMENT_NAME AS 'Departamento'
FROM
    job_history
INNER JOIN employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
INNER JOIN jobs ON jobs.JOB_ID = job_history.JOB_ID
INNER JOIN departments ON departments.DEPARTMENT_ID = job_history.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, `Cargo` ASC;
