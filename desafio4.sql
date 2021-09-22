SELECT 
    job.JOB_TITLE AS `Cargo`,
    ROUND(AVG(emplo.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(emplo.SALARY)) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(emplo.SALARY)) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(emplo.SALARY)) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(emplo.SALARY)) > 10500 THEN 'CEO'
    END AS `Senioridade`
FROM
    employees AS emplo
        INNER JOIN
    jobs AS job ON emplo.JOB_ID = job.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;

