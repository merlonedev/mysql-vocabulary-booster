SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo funcionário 1',
    e.SALARY 'Salário funcionário 1',
    e.PHONE_NUMBER 'Telefone funcionário 1',
    CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) 'Nome completo funcionário 2',
    e1.SALARY 'Salário funcionário 2',
    e1.PHONE_NUMBER 'Telefone funcionário 2'
FROM
    hr.employees e,
    hr.employees e1
WHERE
    e.JOB_ID = e1.JOB_ID
        AND e.EMPLOYEE_ID <> e1.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
