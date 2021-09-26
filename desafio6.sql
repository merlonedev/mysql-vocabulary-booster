SELECT DISTINCT
    CONCAT(E.first_name, ' ', E.last_name) AS `Nome completo`,
    J.job_title AS `Cargo`,
    H.start_date AS `Data de início do cargo`,
    D.department_name AS `Departamento`
FROM
    job_history AS H
        JOIN
    hr.employees AS E ON H.employee_id = E.employee_id
        JOIN
    hr.jobs AS J ON H.job_id = J.job_id
        JOIN
    hr.departments AS D ON H.department_id = D.department_id
ORDER BY `Nome completo` DESC , J.job_title;
