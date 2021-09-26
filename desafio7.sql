SELECT 
    CONCAT(UCASE(first_name), ' ', UCASE(last_name)) AS `Nome completo`,
    hire_date AS `Data de início`,
    salary AS `Salário`
FROM
    employees
    ORDER BY `Nome completo`, `Data de início`;
