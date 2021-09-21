SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
    h.JOB_TITLE AS 'Cargo',
    j.START_DATE AS 'Data de início do cargo',
    d.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS h
		INNER JOIN
	hr.job_history AS j
        INNER JOIN
    hr.departments AS d ON e.JOB_ID = h.JOB_ID
        AND e.DEPARTMENT_ID = d.DEPARTMENT_ID AND e.EMPLOYEE_ID = j.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) DESC , h.JOB_TITLE ASC;
