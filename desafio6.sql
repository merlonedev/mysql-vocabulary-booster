SELECT 
    CONCAT(e.first_name, ' ', e.last_name) 'Nome completo',
    j.JOB_TITLE 'Cargo',
    h.START_DATE 'Data de início do cargo',
    d.DEPARTMENT_NAME 'Departamento'
FROM
    hr.job_history h
        INNER JOIN
    hr.departments d ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
        INNER JOIN
    hr.employees e ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
        INNER JOIN
    hr.jobs j ON j.JOB_ID = h.JOB_ID
ORDER BY e.FIRST_NAME DESC , j.JOB_TITLE;
