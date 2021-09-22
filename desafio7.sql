SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) 'Nome completo',
    jh.START_DATE 'Data de início',
    e.SALARY 'Salário'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` , `Data de início`;
