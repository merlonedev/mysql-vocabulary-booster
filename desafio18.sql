SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
CONCAT(CASE 
WHEN DAY(jh.START_DATE) > 9 THEN DAY(jh.START_DATE)
ELSE CONCAT('0', DAY(jh.START_DATE)) 
END,
'/',
CASE 
WHEN MONTH(jh.START_DATE) > 9 THEN MONTH(jh.START_DATE)
ELSE CONCAT('0', MONTH(jh.START_DATE)) 
END,
'/',
YEAR(jh.START_DATE)) AS `Data de início`,
CONCAT(CASE 
WHEN DAY(jh.END_DATE) > 9 THEN DAY(jh.END_DATE)
ELSE CONCAT('0', DAY(jh.END_DATE)) 
END,
'/',
CASE 
WHEN MONTH(jh.END_DATE) > 9 THEN MONTH(jh.END_DATE)
ELSE CONCAT('0', MONTH(jh.END_DATE)) 
END,
'/',
YEAR(jh.END_DATE)) AS `Data de rescisão`,
ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS `Anos trabalhados`
FROM employees AS e
INNER JOIN job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) <> '00'
GROUP BY `Nome completo`, `Data de início`, `Data de rescisão`, `Anos trabalhados`
ORDER BY `Nome completo`, `Anos trabalhados`;
