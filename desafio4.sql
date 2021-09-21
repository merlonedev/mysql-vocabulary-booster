SELECT 
    jobs.job_title AS Cargo,
    ROUND( AVG(emp.salary), 2) AS `Média salarial`,
    CASE
        WHEN AVG(emp.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(emp.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(emp.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    jobs
        JOIN
    employees AS emp ON emp.job_id = jobs.job_id
GROUP BY jobs.job_title
ORDER BY `Média salarial`, Cargo;
