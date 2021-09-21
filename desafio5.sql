SELECT 
    JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(MAX_SALARY / 12, 2) AS 'Máxima mínima mensal'
FROM
    hr.jobs
ORDER BY `Variação Salarial`;
