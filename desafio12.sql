SELECT 
    CONCAT(a.FIRST_NAME, ' ', a.LAST_NAME) AS `Nome completo funcionário 1`,
    a.SALARY AS 'Salário funcionário 1',
    a.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(b.FIRST_NAME, ' ', b.LAST_NAME) AS `Nome completo funcionário 2`,
    b.SALARY AS 'Salário funcionário 2',
    b.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    employees AS a
        JOIN
    employees AS b ON a.JOB_ID = b.JOB_ID
WHERE
    a.EMPLOYEE_ID != b.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
