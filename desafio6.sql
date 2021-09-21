SELECT
    CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME) AS `Nome completo`,
    jobs.JOB_TITLE AS Cargo,
    j_history.START_DATE AS `Data de início do cargo`,
    departments.DEPARTMENT_NAME AS Departamento
FROM
hr.job_history AS j_history
        JOIN
hr.jobs AS jobs ON jobs.JOB_ID = j_history.JOB_ID
        JOIN
hr.employees AS employees ON employees.EMPLOYEE_ID = j_history.EMPLOYEE_ID
	JOIN
hr.departments AS departments ON departments.DEPARTMENT_ID = j_history.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
