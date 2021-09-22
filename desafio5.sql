SELECT 
    JOB_TITLE AS `Cargo`,
    ROUND(MAX_SALARY / 12) - ROUND(MIN_SALARY / 12) AS `Variação Salarial`,
    ROUND(MIN_SALARY / 12) AS `Média mínima mensal`,
    ROUND(MAX_SALARY / 12) AS `Média máxima mensal`
FROM
    jobs
ORDER BY `Variação Salarial`, `Cargo`
