SELECT job_title AS 'Cargo',
(max_salary - min_salary) AS 'Variação Salarial',
CAST((min_salary / 12) AS DECIMAL(10, 2)) AS 'Média mínima mensal',
CAST((max_salary / 12) AS DECIMAL(10, 2)) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY (max_salary - min_salary), job_title;
