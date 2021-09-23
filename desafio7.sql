SELECT 
    UCASE(CONCAT(first_name, ' ', last_name)) AS 'Nome completo',
    start_date AS 'Data de início',
    salary AS 'Salário'
FROM
    employees AS e
        JOIN
    job_history AS jh ON e.employee_id = jh.employee_id
WHERE
    MONTH(START_DATE) LIKE '1'
        OR MONTH(START_DATE) LIKE '2'
        OR MONTH(START_DATE) LIKE '3'
ORDER BY `Nome completo` , `Data de início`;
