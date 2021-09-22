SELECT 
    J.JOB_TITLE AS Cargo,
    ROUND(AVG(E.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN AVG(E.SALARY) <= 5800 THEN 'Júnior'
        WHEN AVG(E.SALARY) <= 7800 THEN 'Pleno'
        WHEN AVG(E.SALARY) <= 10500 THEN 'Senior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    jobs J
        JOIN
    employees E ON J.JOB_ID = E.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial` , J.JOB_TITLE; 
