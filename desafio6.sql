SELECT
    CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
    jobs.JOB_TITLE AS 'Cargo',
    emp.HIRE_DATE AS 'Data de início do cargo',
    dep.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS his ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jobs ON jobs.JOB_ID = his.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = his.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , jobs.JOB_TITLE ASC;

