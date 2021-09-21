SELECT 
    UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    emp.SALARY AS 'Salário'
FROM
    hr.employees emp
        JOIN
    hr.job_history jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    MONTH(jh.START_DATE) IN (1 , 2, 3)
ORDER BY UPPER(CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME)) , jh.START_DATE;