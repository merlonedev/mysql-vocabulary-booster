SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(employees.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(employees.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    employees AS employees
        JOIN
    jobs AS jobs
WHERE
    jobs.JOB_ID = employees.JOB_ID
GROUP BY employees.JOB_ID
ORDER BY `Média salarial` ASC , Cargo ASC;
