SELECT job_title AS 'Cargo', max_salary,
(IF(max_salary <= 10000, 'Baixo',
IF(max_salary <= 20000, 'Médio',
IF(max_salary <= 30000, 'Alto', 'Altíssimo')))) AS 'Nível'
FROM hr.jobs
ORDER BY job_title;
