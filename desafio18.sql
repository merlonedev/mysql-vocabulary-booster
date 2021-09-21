SELECT 
    (SELECT 
            CONCAT(e.first_name, ' ', e.last_name)
        FROM
            hr.employees AS e
        WHERE
            e.employee_id = j.employee_id) AS `Nome completo`,
    DATE_FORMAT(j.start_date, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(j.end_date, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(j.end_date, j.start_date) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS j
WHERE
    j.employee_id <> 0
ORDER BY `Nome completo` , `Anos trabalhados`;
