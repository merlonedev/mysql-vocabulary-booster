SELECT 
    hr.jobs.JOB_TITLE AS `Cargo`,
    (hr.jobs.MAX_SALARY - hr.jobs.MIN_SALARY) AS `Variação Salarial`,
    ROUND(hr.jobs.MIN_SALARY / 12, 2) AS `Média mínima mensal`,
    ROUND(hr.jobs.MAX_SALARY / 12, 2) AS `Média máxima mensal`
FROM
    hr.jobs
ORDER BY `Variação Salarial` , JOB_TITLE;
