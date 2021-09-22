SELECT
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(emp.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(emp.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(emp.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN AVG(emp.SALARY) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS emp ON emp.JOB_ID = jobs.JOB_ID
GROUP BY emp.JOB_ID
ORDER BY `Média salarial` ASC , jobs.JOB_TITLE ASC;
