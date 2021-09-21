SELECT 
    UCASE(concat(e.first_name, ' ', e.last_name)) AS `Nome completo`,
    jh.start_date AS `Data de início`,
    e.salary AS `Salário`
FROM
    hr.employees AS e
        JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    where
		month(start_date) = 1 || month(start_date) = 2 || month(start_date) = 3
ORDER BY `Nome completo`, `Data de início`;
