SELECT 
    n.JOB_TITLE AS `Cargo`,
    ROUND(AVG(s.SALARY), 2) AS `Média Salarial`,
    CASE
        WHEN ROUND(AVG(s.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(s.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(s.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(s.SALARY), 2) > 10500 THEN 'CEO'
        ELSE 'Não categorizado'
    END AS `Senioridade`
FROM
    hr.jobs AS n
        JOIN
    hr.employees AS s ON n.JOB_ID = s.JOB_ID
GROUP BY s.JOB_ID
ORDER BY `Média Salarial` ASC , `Cargo` ASC;
