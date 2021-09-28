SELECT 
	CONCAT(e.first_name, ' ',e.last_name) AS 'Nome completo',
	-- CONCAT(DAY(jh.start_date), '/', MONTH(jh.start_date), '/', YEAR(jh.start_date)) as 'Data de início', Como não leva o zero dá ruim nos testes, achei esse DATE_FORMAT:
	-- CONCAT(DAY(jh.end_date), '/', MONTH(jh.end_date), '/', YEAR(jh.end_date)) as 'Data de rescisão',
    DATE_FORMAT(jh.start_date, '%d/%m/%Y') as 'Data de início',
    DATE_FORMAT(jh.end_date, '%d/%m/%Y') as 'Data de rescisão',
    ROUND((DATEDIFF(end_date, start_date) / 365), 2) as 'Anos trabalhados'
FROM job_history as jh
JOIN employees as e ON e.employee_id = jh.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
