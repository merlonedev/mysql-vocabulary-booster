SELECT 
    j.job_title AS Cargo,
    ROUND(AVG(e.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.salary) > 10500 THEN 'CEO'
        WHEN AVG(e.salary) > 7501 THEN 'Sênior'
        WHEN AVG(e.salary) > 5801 THEN 'Pleno'
        ELSE 'Júnior'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.job_id = e.job_id
GROUP BY e.job_id
ORDER BY `Média salarial` , cargo;