SELECT 
    j.JOB_TITLE AS `Cargo`,
    round(AVG(SALARY),2) AS `Média salarial`,
    CASE
        WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    hr.employees e
        INNER JOIN
    hr.jobs j ON j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média salarial` ASC, JOB_TITLE ASC;
