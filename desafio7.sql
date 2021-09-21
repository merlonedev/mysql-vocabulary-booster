SELECT 
    UCASE(CONCAT(first_name, ' ', last_name)) as `Nome completo`,
    jh.start_date as `Data de início`,
    salary as Salário
FROM
    employees e
    JOIN job_history as jh
    ON e.employee_id = jh.employee_id
    WHERE MONTH(jh.start_date) in (1,2,3)
ORDER BY `Nome completo`, `Data de início`;
