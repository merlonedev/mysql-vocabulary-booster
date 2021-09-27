SELECT 
UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    s.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
hr.employees AS e
    INNER JOIN
    hr.job_history AS s ON e.EMPLOYEE_ID = s.EMPLOYEE_ID
HAVING MONTH(s.START_DATE) BETWEEN 1 AND 3
ORDER BY UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)), s.START_DATE;
