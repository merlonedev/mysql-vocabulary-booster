SELECT 
    JOB_TITLE AS 'Cargo',
    (MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    TRUNCATE(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    TRUNCATE(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.jobs
ORDER BY (MAX_SALARY - MIN_SALARY) ASC , JOB_TITLE ASC
