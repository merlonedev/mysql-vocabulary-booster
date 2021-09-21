SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome Completo',
    j.START_DATE AS 'Data de início',
    e.SALARY AS 'Salário'
FROM
    hr.employees AS e
        INNER JOIN
    hr.job_history AS j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    MONTH(j.START_DATE) <= 3
ORDER BY 'Nome Completo' , j.START_DATE
