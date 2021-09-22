SELECT 
    JOB_TITLE AS 'Cargo',
    CASE
    WHEN MAX_SALARY < 10001 THEN 'Baixo'
	WHEN MAX_SALARY < 20001 THEN 'Médio'
	WHEN MAX_SALARY < 30001 THEN 'Alto'
	ELSE 'Altíssimo'
    END AS 'Nível'
FROM
    hr.jobs
ORDER BY 'Cargo';
