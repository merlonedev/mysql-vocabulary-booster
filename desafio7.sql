SELECT 
    UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    start_date AS `Data de início`,
    e.salary AS `Salário`
FROM
    hr.employees AS e
        JOIN
    job_history AS j ON j.employee_id = e.employee_id
WHERE
    MONTH(j.start_date) <= 3
ORDER BY `Nome completo` , `Data de início`;
