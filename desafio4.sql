SELECT 
    j.job_title AS `Cargo`,
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(e.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        JOIN
    hr.employees AS e ON j.job_id = e.job_id
GROUP BY j.job_id
ORDER BY `Média salarial`, `Cargo`;
