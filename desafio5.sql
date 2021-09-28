SELECT 
    JOB_TITLE AS 'Cargo',
    ROUND(MAX_SALARY - MIN_SALARY) AS 'Variação Salarial',
    ROUND(MIN_SALARY / 12, 2) AS 'Média mínima mensal',
    ROUND(MAX_SALARY / 12, 2) AS 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY JOB_TITLE
order by ROUND(MAX_SALARY - MIN_SALARY) asc, JOB_TITLE asc;
