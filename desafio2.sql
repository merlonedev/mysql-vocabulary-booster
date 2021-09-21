SELECT 
    JOB_TITLE AS 'Cargo',
    CASE
        WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
        WHEN MAX_SALARY >= 20001 THEN 'Alto'
        WHEN MAX_SALARY >= 10001 THEN 'Médio'
        WHEN MAX_SALARY >= 5000 THEN 'Baixo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY Cargo;
