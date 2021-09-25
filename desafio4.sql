SELECT 
    a.job_title AS Cargo,
    TRUNCATE(AVG(b.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(b.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(b.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(b.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(b.salary) > 10501 THEN 'CEO'
        ELSE ''
    END AS 'Senioridade'
FROM
    jobs AS a
        INNER JOIN
    employees AS b ON a.job_id = b.job_id
GROUP BY `Cargo`
ORDER BY `Média salarial`, `Cargo`;
