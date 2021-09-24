SELECT 
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS 'Anos trabalhados'
FROM
job_history AS jh
INNER JOIN
employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
