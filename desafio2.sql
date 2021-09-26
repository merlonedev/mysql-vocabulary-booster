SELECT 
    JOB_TITLE AS Cargo,
    CASE
        WHEN MAX_SALARY between 5000 and 10000 THEN 'Baixo'
        WHEN MAX_SALARY between 10001 and 20000 THEN 'Médio'
        WHEN MAX_SALARY between 20001 and 30000  THEN 'Alto'
        ELSE 'Altíssimo'
    END AS 'Nível'
FROM
    hr.jobs
    order by JOB_TITLE;

