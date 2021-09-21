SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    job_history jh
        INNER JOIN
    employees e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) , jh.START_DATE;
