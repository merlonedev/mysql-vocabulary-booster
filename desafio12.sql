SELECT 
    CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo funcionário 1',
    e.salary AS 'Salário funcionário 1',
    e.phone_number AS 'Telefone funcionário 1',
    CONCAT(e2.first_name, ' ', e2.last_name) AS 'Nome completo funcionário 2',
    e2.salary AS 'Salário funcionário 2',
    e2.phone_number AS 'Telefone funcionário 2'
FROM
    hr.employees AS e
        JOIN
    hr.employees AS e2 ON e.job_id = e2.job_id
WHERE
    e.employee_id != e2.employee_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) , CONCAT(e2.first_name, ' ', e2.last_name);
