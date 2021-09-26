SELECT 
    j.JOB_TITLE AS Cargo,
    CEIL(AVG(e.SALARY)) AS 'Média salarial',
    CASE
        WHEN
            CEIL(AVG(e.SALARY)) >= 2000
                AND CEIL(AVG(e.SALARY)) <= 5800
        THEN
            'Júnior'
        WHEN
            CEIL(AVG(e.SALARY)) >= 5801
                AND CEIL(AVG(e.SALARY)) <= 7500
        THEN
            'Pleno'
        WHEN
            CEIL(AVG(e.SALARY)) >= 7501
                AND CEIL(AVG(e.SALARY)) <= 10500
        THEN
            'Sênior'
        WHEN CEIL(AVG(e.SALARY)) > 10501 THEN 'CEO'
    END AS Senioridade
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY `Média salarial`, Cargo;
