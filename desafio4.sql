SELECT 
    j.JOB_TITLE AS `Cargo`,
    ROUND(AVG(i.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(i.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(i.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(i.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(i.SALARY) > 10500 THEN 'CEO'
    END AS `Senioridade`
FROM
    jobs AS j
        INNER JOIN
    hr.employees AS i ON i.JOB_ID = j.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` , JOB_TITLE;
