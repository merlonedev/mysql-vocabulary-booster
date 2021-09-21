SELECT 
    jb.JOB_TITLE `Cargo`,
    ROUND(AVG(em.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(em.SALARY), 2) <= 5800 THEN 'Júnior'
        WHEN ROUND(AVG(em.SALARY), 2) <= 7500 THEN 'Pleno'
        WHEN ROUND(AVG(em.SALARY), 2) <= 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    employees AS `em`
INNER JOIN jobs AS `jb`
ON em.JOB_ID = jb.JOB_ID
GROUP BY jb.JOB_TITLE
ORDER BY `Média salarial`, `Cargo`;
