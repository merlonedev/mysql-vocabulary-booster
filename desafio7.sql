SELECT Ucase( concat(employees.FIRST_NAME , ' ' , employees.LAST_NAME)) AS 'Nome completo',
s.START_DATE AS `Data de início`,
employees.SALARY AS `Salário`
FROM hr.job_history AS s
INNER JOIN hr.employees AS employees ON s.employee_id = employees.employee_id
WHERE MONTH(s.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
