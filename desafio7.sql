SELECT 
    ucase(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN 
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
    where month(jh.start_date) < 4
ORDER BY `Nome completo`, `Data de início`;
