SELECT jobs.JOB_TITLE AS 'Cargo', ROUND(AVG(employees.SALARY), 2) AS 'Média salarial', CASE
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO' END AS 'Senioridade'
FROM jobs AS jobs INNER JOIN employees AS employees ON jobs.JOB_ID = employees.JOB_ID GROUP BY jobs.JOB_ID ORDER BY ROUND(AVG(employees.SALARY), 2) ASC , jobs.JOB_TITLE ASC
