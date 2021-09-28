SELECT UCASE( CONCAT(e.FIRST_NAME , ' ' , e.LAST_NAME)) AS 'Nome completo',
sd.START_DATE AS `Data de início`,
e.SALARY AS `Salário`
FROM hr.job_history AS sd
INNER JOIN hr.employees AS e ON sd.employee_id = e.employee_id
WHERE MONTH(sd.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , `Data de início`;
-- com ajuda do Gustavo Mourão
