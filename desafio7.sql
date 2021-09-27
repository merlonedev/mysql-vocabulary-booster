SELECT 
    CONCAT(UCASE(a.first_name),
            ' ',
            UCASE(a.last_name)) AS `Nome completo`,
    b.start_date AS `Data de início`,
    a.salary AS `Salário`
FROM
    employees AS a
        INNER JOIN
    job_history AS b ON a.employee_id = b.employee_id
WHERE
    MONTH(start_date) BETWEEN 01 AND 03
ORDER BY `Nome completo` , `Data de início`;
