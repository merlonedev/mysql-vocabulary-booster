SELECT 
    job_title AS Cargo,
    MAX_SALARY - MIN_SALARY as `Variação Salarial`,
    round(MIN_SALARY / 12, 2) AS `Média mínima mensal`,
    round(MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM
	hr.jobs
ORDER BY `Variação Salarial`, Cargo;
