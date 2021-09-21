SELECT 
    j.JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
        WHEN ROUND(AVG(SALARY), 2) > 7500 THEN 'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 5800 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) > 2000 THEN 'Júnior'
    END AS Senioridade
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` , Cargo;
