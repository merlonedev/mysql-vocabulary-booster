SELECT 
    JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) * 12 AS 'Variação Salarial',
    ROUND(AVG(MIN_SALARY), 2) AS 'Média mínima mensal',
    ROUND(AVG(MAX_SALARY), 2) AS 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY MIN_SALARY , MAX_SALARY
ORDER BY (MAX_SALARY - MIN_SALARY) * 12 ASC , JOB_TITLE ASC;
