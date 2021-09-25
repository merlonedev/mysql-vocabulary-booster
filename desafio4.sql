SELECT
    t1.job_title AS `Cargo`,
    ROUND(AVG(t2.salary), 2) AS `Média Salarial`,
    CASE
        WHEN ROUND(AVG(t2.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(t2.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(t2.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(t2.salary), 2) > 10500 THEN 'CEO'
    END AS `Senioridade`
FROM
    hr.employees t2
    INNER JOIN hr.jobs t1
ON t1.job_id = t2.job_id
GROUP BY t2.job_id
ORDER BY `Média Salarial`, t1.job_title;
