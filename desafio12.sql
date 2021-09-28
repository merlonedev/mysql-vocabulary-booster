SELECT
CONCAT(F1.first_name, ' ', F1.last_name) AS `Nome completo funcionário 1`,
F1.salary AS `Salário funcionário 1`,
F1.phone_number AS `Telefone funcionário 1`,
CONCAT(F2.first_name, ' ', F2.last_name) AS `Nome completo funcionário 2`,
F2.salary AS `Salário funcionário 2`,
F2.phone_number AS `Telefone funcionário 2`
FROM
hr.employees AS F1,
hr.employees AS F2
WHERE (F1.employee_id <> F2.employee_id AND F1.JOB_ID = F2.JOB_ID)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
