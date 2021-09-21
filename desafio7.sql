SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome Completo', 
jobH.START_DATE AS 'Data de início',
emp.SALARY AS 'Salário' 
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobH
ON emp.EMPLOYEE_ID = jobH.EMPLOYEE_ID
WHERE MONTH(jobH.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo`, jobH.START_DATE;
