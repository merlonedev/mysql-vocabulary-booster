SELECT
    job_title AS 'Cargo',
    ROUND((MAX_SALARY + MIN_SALARY) / 2, 2) AS 'Média salarial',
    (CASE
        WHEN ROUND((MAX_SALARY + MIN_SALARY) / 2, 2) BETWEEN 1999 AND 5801 THEN 'Júnior'
        WHEN ROUND((MAX_SALARY + MIN_SALARY) / 2, 2) BETWEEN 5800 AND 7501 THEN 'Pleno'
        WHEN ROUND((MAX_SALARY + MIN_SALARY) / 2, 2) BETWEEN 7500 AND 10501 THEN 'Sênior'
        WHEN ROUND((MAX_SALARY + MIN_SALARY) / 2, 2) > 10500 THEN 'CEO'
    END) AS 'Senioridade'
FROM
    hr.jobs
ORDER BY `Média salarial` ASC , job_title ASC;
