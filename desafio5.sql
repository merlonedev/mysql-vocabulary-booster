SELECT 
    JOB_TITLE 'Cargo',
    MAX_SALARY - MIN_SALARY 'Variação Salarial',
    ROUND(MIN(MIN_SALARY/12), 2) 'Média mínima mensal',
    ROUND(MAX(MAX_SALARY/12), 2) 'Média máxima mensal'
FROM
    hr.jobs
GROUP BY JOB_ID
ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
