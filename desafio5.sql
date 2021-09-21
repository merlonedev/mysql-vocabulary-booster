SELECT 
    JOB_TITLE AS Cargo,
    MAX_SALARY - MIN_SALARY AS 'Variação Salarial',
    ROUND(AVG(MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    ROUND(AVG(Max_SALARY / 12), 2) AS 'Média máxima mensal'
    FROM
    jobs
    GROUP BY JOB_TITLE, MAX_SALARY - MIN_SALARY
    ORDER BY MAX_SALARY - MIN_SALARY, JOB_TITLE;
