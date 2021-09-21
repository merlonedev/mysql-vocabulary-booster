SELECT 
    JOB_ID AS Cargo,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
        WHEN ROUND(AVG(SALARY), 2) > 7500 THEN 'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 5800 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) > 2000 THEN 'Júnior'
    END AS Senioridade
FROM
    hr.employees
GROUP BY Cargo
ORDER BY `Média salarial` , Cargo;
