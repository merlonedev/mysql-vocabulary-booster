SELECT 
    jobs.JOB_TITLE AS Cargo,
    ROUND(AVG(employees.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(employees.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(employees.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(employees.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    hr.jobs AS jobs
        INNER JOIN
    hr.employees AS employees
    ON jobs.JOB_ID = employees.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;
