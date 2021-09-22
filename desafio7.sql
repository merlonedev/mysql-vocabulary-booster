SELECT 
    CONCAT(UCASE(first_name), ' ', UCASE(last_name)) 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    job_history AS jh
        INNER JOIN
    employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo` ASC, jh.START_DATE ASC;