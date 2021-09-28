SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(em.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(em.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(em.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(em.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS em
        INNER JOIN
    hr.jobs AS jobs ON em.JOB_ID = jobs.JOB_ID
GROUP BY `Cargo`
ORDER BY `Média salarial` , `Cargo` ASC;
