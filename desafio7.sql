SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    START_DATE LIKE '_____01%'
        OR START_DATE LIKE '_____02%'
        OR START_DATE LIKE '_____03%'
ORDER BY UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), jh.START_DATE;
