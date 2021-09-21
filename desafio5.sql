SELECT 
	JOB_TITLE AS Cargo, 
	MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
  (SELECT ROUND(MIN(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) AS `Média mínima mensal`,
  (SELECT ROUND(MAX(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) AS `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial` ASC, Cargo ASC;
