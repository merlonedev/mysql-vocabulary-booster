SELECT 
    JOB_TITLE AS 'Cargo',
    CASE
        WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
        WHEN MAX_SALARY > 20001 THEN 'Alto'
        WHEN MAX_SALARY > 10001 THEN 'Médio'
        ELSE 'Baixo'
    END AS 'Nivel'
FROM
    hr.jobs
    order by JOB_TITLE;
