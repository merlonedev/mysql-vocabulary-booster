SELECT 
    CONCAT(emp.first_name, ' ', emp.last_name) AS `Nome completo`,
    jbs.job_title AS Cargo,
    hist.start_date AS `Data de início do cargo`,
    dep.department_name AS Departamento
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS hist ON hist.employee_id = emp.employee_id
        INNER JOIN
hr.jobs AS jbs ON jbs.job_id = hist.job_id
        INNER JOIN
    hr.departments AS dep ON dep.department_id = hist.department_id
    ORDER BY `Nome completo` DESC,  jbs.job_title;
