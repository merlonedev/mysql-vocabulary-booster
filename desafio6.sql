SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
    J.job_title AS Cargo,
    H.start_date AS `Data de início do cargo`,
    D.department_name AS Departamento
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON H.employee_id = E.employee_id
        INNER JOIN
    hr.jobs AS J ON J.job_id = H.job_id
        INNER JOIN
    hr.departments AS D ON D.department_id = H.department_id
ORDER BY `Nome completo` DESC , J.job_title;
