SELECT 
    j.JOB_TITLE AS 'Cargo',
    j.MAX_SALARY - j.MIN_SALARY AS 'Variação salarial',
    ROUND(j.MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(j.MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_ID
ORDER BY j.MAX_SALARY - j.MIN_SALARY ASC , j.JOB_TITLE;
