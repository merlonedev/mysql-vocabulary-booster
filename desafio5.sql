SELECT 
j.JOB_TITLE AS 'Cargo',
(SELECT (MAX_SALARY - MIN_SALARY) FROM jobs where JOB_TITLE = j.JOB_TITLE) as 'Variação Salarial',
ROUND((SELECT MIN_SALARY FROM jobs where JOB_TITLE = j.JOB_TITLE)/12, 2) as 'Média mínima mensal',
ROUND((SELECT MAX_SALARY FROM jobs where JOB_TITLE = j.JOB_TITLE)/12, 2) as 'Média máxima mensal'
FROM jobs j
INNER JOIN employees e ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY (SELECT (MAX_SALARY - MIN_SALARY) FROM jobs where JOB_TITLE = j.JOB_TITLE), j.JOB_TITLE;
