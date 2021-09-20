SELECT CONCAT(UCASE(e.first_name), ' ', UCASE(e.last_name)) 'Nome completo',
jh.start_date 'Data de início',
e.salary 'Salário'
FROM hr.job_history jh
JOIN hr.employees e ON e.employee_id = jh.employee_id
WHERE MONTH(jh.start_date) IN (01, 02, 03)
ORDER BY `Nome completo`, `Data de início`;
