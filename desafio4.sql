SELECT
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            hr.jobs.JOB_ID = hr.employees.JOB_ID) AS 'Cargo',
    ROUND(AVG(SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5800 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7500 AND 10500 THEN 'Sênior'
        WHEN AVG(SALARY) > 10500 THEN 'CEO'
        ELSE 'Salário fora dos parâmetros'
    END AS 'Senioridade'
FROM
    hr.employees
GROUP BY JOB_ID
ORDER BY 2 , 1;
