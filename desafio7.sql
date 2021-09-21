SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início do cargo',
    e.Salary AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE MONTH(jh.START_DATE) BETWEEN 1 AND 3
ORDER BY UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), e.HIRE_DATE;
