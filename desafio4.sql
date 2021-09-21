SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    ROUND(AVG(emp.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(emp.SALARY) , 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(emp.SALARY) , 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(emp.SALARY) , 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs
        JOIN
    hr.employees emp ON jobs.JOB_ID = emp.JOB_ID
GROUP BY emp.JOB_ID
ORDER BY ROUND(AVG(emp.SALARY) , 2) ASC , JOB_TITLE ASC;
