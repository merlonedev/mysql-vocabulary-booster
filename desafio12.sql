SELECT 
    CONCAT(employee_1.FIRST_NAME,
            ' ',
            employee_1.LAST_NAME) AS 'Nome completo funcionário 1',
    employee_1.SALARY AS 'Salário funcionário 1',
    employee_1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(employee_2.FIRST_NAME,
            ' ',
            employee_2.LAST_NAME) AS 'Nome completo funcionário 2',
    employee_2.SALARY AS 'Salário funcionário 2',
    employee_2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    employees AS employee_1,
    employees AS employee_2
WHERE
    employee_1.JOB_ID = employee_2.JOB_ID
        AND employee_1.EMPLOYEE_ID <> employee_2.EMPLOYEE_ID
ORDER BY CONCAT(employee_1.FIRST_NAME,
        ' ',
        employee_1.LAST_NAME) , CONCAT(employee_2.FIRST_NAME,
        ' ',
        employee_2.LAST_NAME);