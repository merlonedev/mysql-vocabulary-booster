SELECT 
    j.job_title AS 'Cargo',
    ROUND(AVG(e.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.salary) > 10500 THEN 'CEO'
        WHEN AVG(e.salary) > 7500 THEN 'Sênior'
        WHEN AVG(e.salary) > 5800 THEN 'Pleno'
        ELSE 'Júnior'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.job_id = j.job_id
GROUP BY e.job_id
ORDER BY AVG(e.salary) , Cargo;