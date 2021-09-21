SELECT j.job_title 'Cargo', ROUND(AVG(e.salary), 2) 'Média salarial',
CASE
WHEN AVG(e.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
    WHEN AVG(e.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
    WHEN AVG(e.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
    ELSE 'CEO'
END 'Senioridade'
FROM hr.jobs j
JOIN hr.employees e
ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY `Média salarial`, `Cargo`;
