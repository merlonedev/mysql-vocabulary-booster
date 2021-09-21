SELECT CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome completo', START_DATE AS 'Data de início', SALARY AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(START_DATE) = 01 OR MONTH(START_DATE) = 02 OR MONTH(START_DATE) = 03 
ORDER BY `Nome completo`, `Data de início`;
