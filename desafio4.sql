SELECT 
    jbs.JOB_TITLE AS `Cargo`,
    ROUND(AVG(emp.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN AVG(emp.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN AVG(emp.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN AVG(emp.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS Senioridade
FROM
    hr.jobs as jbs
INNER JOIN hr.employees AS emp
ON jbs.JOB_ID = emp.JOB_ID
GROUP BY jbs.JOB_TITLE
ORDER BY AVG(emp.SALARY), JOB_TITLE;
