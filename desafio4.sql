SELECT jobs.job_title AS 'Cargo',
CAST(AVG(employees.salary) AS DECIMAL(10, 2)) AS 'Média salarial',
(IF(AVG(employees.salary) < 5800, 'Júnior',
IF(AVG(employees.salary) < 7500, 'Pleno',
IF(AVG(employees.salary) < 10500, 'Sênior', 'CEO')))) AS 'Senioridade'
FROM hr.employees AS employees
INNER JOIN hr.jobs AS jobs
ON employees.job_id = jobs.job_id
GROUP BY employees.job_id
ORDER BY AVG(employees.salary), jobs.job_title;
