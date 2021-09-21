SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(emplo.salary), 2) AS 'Média salarial',
    CASE
        WHEN AVG(emplo.salary) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(emplo.salary) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(emplo.salary) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(emplo.salary) > 10500 THEN 'CEO'
        ELSE 'Sem dados'
    END AS 'Senioridade'
FROM
    jobs
        INNER JOIN
    employees AS emplo ON jobs.JOB_ID = emplo.JOB_ID
GROUP BY jobs.JOB_ID
ORDER BY AVG(emplo.SALARY) ASC , jobs.JOB_TITLE ASC
