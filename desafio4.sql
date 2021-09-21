SELECT
    j.JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN e.SALARY BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN e.SALARY BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN e.SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN e.SALARY > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    jobs AS j
        INNER JOIN
    employees AS e ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY `Média salarial` , `Cargo`;
