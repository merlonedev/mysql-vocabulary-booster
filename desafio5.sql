SELECT 
    j.job_title AS Cargo, j.MAX_SALARY - j.MIN_SALARY as "Variação Salarial",
    round(min(e.SALARY),2) as "Média mínima mensal", round(max(e.SALARY),2) as "Média máxima mensal"
FROM
    hr.employees AS e
        INNER JOIN
    hr.jobs AS j ON j.job_id = e.job_id
GROUP BY e.job_id
ORDER BY `Variação Salarial` , Cargo;
