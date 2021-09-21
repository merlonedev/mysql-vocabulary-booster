SELECT 
JOB_TITLE AS Cargo, 
(SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) AS `Média salarial`,
CASE 
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN (SELECT ROUND(AVG(SALARY), 2) FROM hr.employees WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) > 10500 THEN 'CEO'
END AS Senioridade
FROM hr.jobs
ORDER BY `Média salarial` ASC, Cargo ASC;
