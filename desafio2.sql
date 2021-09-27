SELECT 
    JOB_TITLE AS Cargo,
    CASE
		WHEN MAX_SALARY between 5000 and 10000 then 'Baixo'
        WHEN MAX_SALARY between 10001 and 20000 then 'Médio'
        WHEN MAX_SALARY between 20001 and 30000 then 'Alto'
        WHEN MAX_SALARY > 30000 then 'Altíssimo'
	END AS Nível
FROM
    jobs
ORDER BY Cargo;
