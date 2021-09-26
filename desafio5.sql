SELECT
JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Variação salarial',
    ROUND(AVG(MIN_SALARY)/12, 2) AS 'Média mínima mensal',
ROUND(AVG(MAX_SALARY)/12, 2) AS 'Média máxima mensal'
FROM
hr.jobs
GROUP BY JOB_ID, `Variação salarial`
ORDER BY `Variação salarial`, Cargo ASC
