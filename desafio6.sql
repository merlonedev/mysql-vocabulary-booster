SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    jt.JOB_TITLE AS 'Cargo',
    sd.START_DATE AS 'Data de início do cargo',
    dn.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS sd
        INNER JOIN
    hr.employees AS e ON sd.employee_id = e.employee_id
        INNER JOIN
    hr.jobs AS jt ON sd.job_id = jt.job_id
        INNER JOIN
    hr.departments AS dn ON sd.department_id = dn.department_id
ORDER BY `Nome completo` DESC , 'Cargo';
