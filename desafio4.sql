SELECT 
    J.job_title AS Cargo,
    ROUND(AVG(E.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(E.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(E.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(E.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS J
        INNER JOIN
    hr.employees AS E ON E.job_id = J.job_id
GROUP BY E.job_id
ORDER BY 'Média salarial';
