-- SELECT 
--     CONCAT(a.first_name, ' ', a.last_name) AS `Nome completo`,
--     b.job_title AS `Cargo`,
--     d.start_date AS `Data de início do cargo`,
--     c.department_name AS `Departamento`
-- FROM
--     employees AS a
--         INNER JOIN
--     jobs AS b ON a.job_id = b.job_id
--         INNER JOIN
--     departments AS c ON a.department_id = c.department_id
--         INNER JOIN
--     job_history AS d ON a.job_id = d.job_id
-- ORDER BY `Nome Completo` DESC , `Cargo`;


SELECT 
    CONCAT(t1.first_name, ' ', t1.last_name) AS `Nome completo`,
    t2.job_title AS `Cargo`,
    t1.hire_date AS `Data de início do cargo`,
    t3.department_name AS `Departamento`
FROM
    hr.employees t1
        INNER JOIN
    hr.jobs t2 ON t1.job_id = t2.job_id
        LEFT JOIN
    hr.departments t3 ON t1.department_id = t3.department_id
ORDER BY `Nome completo`, `Cargo`;
