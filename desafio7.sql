SELECT 
    UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS `Nome completo`,
    H.start_date AS `Data de início`,
    E.salary AS Salário
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS H ON E.employee_id = H.employee_id
WHERE
    MONTH(H.start_date) = 1
        OR MONTH(H.start_date) = 2
        OR MONTH(H.start_date) = 3
ORDER BY `Nome completo` , H.start_date;
