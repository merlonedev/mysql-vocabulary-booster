SELECT 
	j.JOB_TITLE AS `Cargo`,
    j.MAX_SALARY - j.MIN_SALARY AS `Variação Salarial`,
    ROUND(j.MAX_SALARY/12, 2) AS `Média máxima mensal`,
    ROUND(j.MIN_SALARY/12, 2) AS `Média mínima mensal`
FROM
    hr.jobs j
ORDER BY `Variação Salarial`, `Cargo`;
