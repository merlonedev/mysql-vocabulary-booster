SELECT j.JOB_TITLE AS 'Cargo',
ROUND(AVG(s.salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(s.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(s.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(s.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS 'Senioridade'
FROM hr.employees AS s
INNER JOIN hr.jobs AS j ON s.JOB_ID = j.JOB_ID
GROUP BY s.JOB_ID
ORDER BY ROUND(AVG(s.salary), 2), j.JOB_TITLE;
