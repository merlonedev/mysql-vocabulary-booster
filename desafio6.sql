SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    job.JOB_TITLE AS 'Cargo',
    s.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
hr.employees AS e
    INNER JOIN
    hr.job_history AS s ON e.EMPLOYEE_ID = s.EMPLOYEE_ID
    INNER JOIN
    hr.jobs AS job ON s.JOB_ID = job.JOB_ID
    INNER JOIN
    hr.departments AS d ON s.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC, job.JOB_TITLE;
