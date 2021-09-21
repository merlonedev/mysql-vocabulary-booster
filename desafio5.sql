SELECT 
    job_title AS 'Cargo',
    (max_salary - min_salary) AS 'Variação Salarial',
    ROUND(max_salary / 12, 2) AS 'Média máxima mensal',
    ROUND(min_salary / 12, 2) AS 'Média mínima mensal'
FROM
    hr.jobs
ORDER BY (max_salary - min_salary) ASC , job_title ASC;
