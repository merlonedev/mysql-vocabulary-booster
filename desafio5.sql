SELECT
JOB_TITLE AS 'Cargo',
    MAX_SALARY - MIN_SALARY as 'Variação Salarial',
    ROUND(MIN_SALARY / 12, 2)'Média mínima mensal',
    ROUND(MAX_SALARY / 12, 2)'Média máxima mensal'
FROM jobs
ORDER BY `Variação Salarial`, `Cargo`;
