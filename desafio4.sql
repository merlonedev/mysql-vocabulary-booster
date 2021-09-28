SELECT 
    tA.job_title AS `Cargo`,
    ROUND(AVG(tB.salary), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(tB.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(tB.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(tB.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(tB.salary), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees tB
        INNER JOIN
    hr.jobs tA ON tA.job_id = tB.job_id
GROUP BY tB.job_id
ORDER BY `Média salarial` , tA.job_title;
