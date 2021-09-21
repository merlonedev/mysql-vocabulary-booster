USE hr;
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS `Nome completo`,
    DATE_FORMAT(j.start_date, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(j.end_date, '%d/%m/%Y') AS `Data de rescisão`,
    DATEDIFF(j.end_date, j.start_date) / 365 AS `Anos trabalhados`
FROM
    employees AS e
        INNER JOIN
    job_history AS j ON e.employee_ID = j.employee_ID
ORDER BY `Nome completo` , `Anos Trabalhados`;
