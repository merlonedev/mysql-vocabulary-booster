SELECT 
    e.JOB_ID AS 'Cargo',
    TRUNCATE(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(e.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(e.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(e.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(e.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS h ON e.JOB_ID = h.JOB_ID
GROUP BY e.JOB_ID
ORDER BY e.SALARY ASC, h.JOB_TITLE ASC;
