SELECT JOB_TITLE AS Cargo,
CASE
WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Médio'
WHEN MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Alto'
WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
END AS 'Nível'
FROM hr.jobs
ORDER BY JOB_TITLE;
