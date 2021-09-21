SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        JOIN
    hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) BETWEEN 01 AND 03
ORDER BY FIRST_NAME , DATE(HIRE_DATE);
