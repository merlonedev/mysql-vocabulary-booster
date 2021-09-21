SELECT 
    JOB_ID AS 'Cargo',
    CASE
        WHEN SALARY >= 5000 AND SALARY <= 10000 THEN 'Baixo'
        WHEN SALARY >= 10001 AND SALARY <= 20000 THEN 'Médio'
        WHEN SALARY >= 20001 AND SALARY <= 30000 THEN 'Alto'
        WHEN SALARY >= 30001 THEN 'Altíssimo'
    END AS 'Nível'
FROM
    hr.employees
ORDER BY JOB_ID;
