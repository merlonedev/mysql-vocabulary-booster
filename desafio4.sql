SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN MAX_SALARY BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN MAX_SALARY BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN MAX_SALARY BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN MAX_SALARY > 10500 THEN 'CEO'
        ELSE 'Não informado'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e
WHERE
    EXISTS( SELECT 
            *
        FROM
            hr.employees
        WHERE
            j.JOB_ID = e.JOB_ID)
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(e.SALARY), 2) , j.JOB_TITLE;
