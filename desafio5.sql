SELECT 
    JOB_TITLE AS `Cargo`,
    MAX_SALARY - MIN_SALARY AS `Variação Salarial`,
    ROUND(MIN_SALARY / 12, 2) AS `Média mínima`,
    ROUND(MAX_SALARY / 12, 2) AS `Média máxima`
FROM
    jobs
ORDER BY `Média Salarial`, `Cargo`;
