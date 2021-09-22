SELECT 
    CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
    DATE_FORMAT(H.start_date, '%d/%m/%Y') AS 'Data de início',
    DATE_FORMAT(H.end_date, '%d/%m/%Y') AS 'Data de rescisão',
    ROUND((DATEDIFF(H.end_date, H.start_date) / 365),
            2) AS 'Anos trabalhados'
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON H.employee_id = E.employee_id
    ORDER BY `Nome completo`, `Anos trabalhados`;
