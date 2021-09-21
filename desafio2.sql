SELECT 
    hr.jobs.JOB_TITLE AS 'Cargo',
    CASE
        WHEN hr.jobs.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN hr.jobs.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN hr.jobs.MAX_SALARY BETWEEN 20001 AND 30000 THEN 'Alto'
        ELSE 'Altíssimo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY Cargo;
