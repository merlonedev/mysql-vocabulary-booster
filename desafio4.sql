    SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE 
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 2000 and 5800 then 'Júnior'
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 5801 and 7500 then 'Pleno'
    WHEN ROUND(AVG(e.SALARY), 2) BETWEEN 7501 and 10500 then 'Sênior'
    WHEN ROUND(AVG(e.SALARY), 2) > 10500 then 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
    where j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(e.SALARY), 2) ASC, j.JOB_TITLE ASC;
