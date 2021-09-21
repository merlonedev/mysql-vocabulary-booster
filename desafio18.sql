SELECT CONCAT(e.first_name, ' ' ,e.last_name) 'Nome completo',
DATE_FORMAT(jh.start_date, '%d/%m/%Y') 'Data de início',
DATE_FORMAT(jh.end_date, '%d/%m/%Y') 'Data de rescisão',
ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.employees e
JOIN job_history jh ON jh.employee_id = e.employee_id
ORDER BY `Nome completo`, `Anos trabalhados`;
