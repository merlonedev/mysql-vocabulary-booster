SELECT 
    j.JOB_TITLE AS `Cargo`,
    j.MAX_SALARY - j.MIN_SALARY AS `Variação salarial`,
    ROUND(j.MIN_SALARY/12, 2) AS `Média mínima mensal`,
    ROUND(j.MAX_SALARY/12, 2) AS `Média máxima mensal`
FROM
    hr.employees e,
    hr.jobs j
WHERE
    j.JOB_ID = e.JOB_ID
GROUP BY `Cargo`
ORDER BY `Variação salarial`, `Cargo`;
