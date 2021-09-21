SELECT 
    job_title AS 'cargo',
    TRUNCATE(AVG(min_salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(min_salary) BETWEEN 2000 AND 5800 THEN 'Junior'
        WHEN AVG(min_salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(min_salary) BETWEEN 7501 AND 10500 THEN 'Sênior '
        WHEN AVG(min_salary) > 10501 THEN 'CEO'
        ELSE ' '
    END AS 'Senioridade'
FROM
    jobs
GROUP BY job_title
ORDER BY TRUNCATE(AVG(min_salary), 2), job_title;
