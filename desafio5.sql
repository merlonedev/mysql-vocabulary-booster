SELECT 
    job_title as `Cargo`,
    max_salary - min_salary as `Variação Salarial`,
    ROUND(min_salary / 12, 2) as `Média mínima mensal`,
    ROUND(max_salary / 12, 2) as `Média máxima mensal`
FROM
    hr.jobs
ORDER BY `Variação Salarial`, `Cargo`;
