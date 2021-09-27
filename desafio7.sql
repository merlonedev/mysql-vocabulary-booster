SELECT 
    UCASE(CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME)) AS 'Nome completo',
    history.START_DATE AS 'Data de início',
    employee.SALARY AS 'Salário'
FROM
    hr.employees AS employee
        INNER JOIN
            hr.job_history AS history
            ON employee.EMPLOYEE_ID = history.EMPLOYEE_ID
WHERE
    MONTH(history.START_DATE) <= 3
ORDER BY
    CONCAT(employee.FIRST_NAME, ' ', employee.LAST_NAME),
    history.START_DATE;
