SELECT j.JOB_TITLE AS `Cargo`, m.`Média salarial`,
CASE 
WHEN m.`Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN m.`Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN m.`Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS `Senioridade`
FROM jobs AS j
INNER JOIN (
SELECT JOB_ID, (
	SELECT ROUND(AVG(SALARY), 2) FROM employees
WHERE JOB_ID = jobs.JOB_ID) AS `Média salarial` FROM jobs) AS m 
ON j.JOB_ID = m.JOB_ID
ORDER BY m.`Média salarial`, Cargo;
