SELECT 
    JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    round(MIN_SALARY / 12, 2) as 'Média mínima mensal',
    round(MAX_SALARY / 12, 2) as 'Média máxima mensal'
FROM
    hr.jobs
ORDER BY `Variação Salarial` , Cargo;
