SELECT 
    J.JOB_TITLE AS 'Cargo',
    ROUND(AVG(EMP.salary), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(EMP.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(EMP.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(EMP.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS EMP
        JOIN
    hr.jobs AS J ON EMP.JOB_ID = J.JOB_ID
GROUP BY EMP.JOB_ID
ORDER BY ROUND(AVG(EMP.salary), 2) ASC , J.JOB_TITLE ASC;
