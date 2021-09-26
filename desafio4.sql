SELECT 
    t2.JOB_TITLE AS Cargo,
    ROUND(AVG(t1.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(t1.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(t1.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(t1.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(t1.SALARY), 2) > 10500 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS t1
        INNER JOIN
    hr.jobs AS t2 ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` ASC , Cargo ASC;
