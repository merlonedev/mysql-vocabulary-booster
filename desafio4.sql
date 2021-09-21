SELECT 
    j.JOB_TITLE,
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(e.SALARY), 2) < 5801 THEN 'Júnior'
        WHEN ROUND(AVG(e.SALARY), 2) < 7501 THEN 'Pleno'
        WHEN ROUND(AVG(e.SALARY), 2) < 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY `Média salarial` , JOB_TITLE;
