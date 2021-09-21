SELECT
    j.JOB_TITLE AS Cargo,
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10501 THEN 'CEO'
        ELSE 'Not Found'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        RIGHT JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` ASC, Cargo ASC;
