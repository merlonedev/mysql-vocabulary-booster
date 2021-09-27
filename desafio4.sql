SELECT 
    JOBS.JOB_TITLE AS 'Cargo',
    ROUND(AVG(EMP.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(EMP.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(EMP.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(EMP.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(EMP.SALARY), 2) > 10500 THEN 'CEO'
    END AS 'Sênioridade'
FROM
    hr.employees AS EMP
        JOIN
    hr.jobs AS JOBS ON EMP.JOB_ID = JOBS.JOB_ID
GROUP BY JOBS.JOB_TITLE
ORDER BY ROUND(AVG(EMP.SALARY), 2) , JOBS.JOB_TITLE;
