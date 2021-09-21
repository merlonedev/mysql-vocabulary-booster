SELECT 
    e.JOB_ID AS Cargo,
    h.MAX_SALARY - h.MIN_SALARY AS 'Variação Salarial',
    TRUNCATE(MIN(e.SALARY / 12), 2) AS 'Média mínima mensal',
    TRUNCATE(MAX(e.SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS h ON e.JOB_ID = h.JOB_ID
GROUP BY e.JOB_ID
ORDER BY e.SALARY ASC , h.JOB_TITLE ASC;
