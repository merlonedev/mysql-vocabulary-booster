SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY)) AS 'Média salarial',
    CASE
        WHEN
            ROUND(AVG(MAX_SALARY - MIN_SALARY)) >= 2000
                AND MAX_SALARY - MIN_SALARY <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(MAX_SALARY - MIN_SALARY)) >= 5801
                AND MAX_SALARY - MIN_SALARY <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(MAX_SALARY - MIN_SALARY)) >= 7501
                AND MAX_SALARY - MIN_SALARY <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    employees AS e
        JOIN
    jobs AS j
WHERE
    j.JOB_ID = e.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média salarial` ASC , Cargo ASC;
