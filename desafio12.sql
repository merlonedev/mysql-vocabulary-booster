SELECT 
    sub.Nome1 AS 'Nome completo funcionário 1',
    sub.SALARY1 AS 'Salário funcionário 1',
    sub.PHONE1 AS 'Telefone funcionário 1',
    sub.Nome2 AS 'Nome completo funcionário 2',
    sub.SALARY2 AS 'Salário funcionário 2',
    sub.PHONE2 AS 'Telefone funcionário 2'
FROM
    (SELECT 
        CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS 'Nome1',
            CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) AS 'Nome2',
            e1.SALARY AS 'SALARY1',
            e2.SALARY AS 'SALARY2',
            e1.PHONE_NUMBER AS 'PHONE1',
            e2.PHONE_NUMBER AS 'PHONE2'
    FROM
        hr.employees AS e1, hr.employees AS e2
    WHERE
        e1.JOB_ID = e2.JOB_ID
            AND e1.EMPLOYEE_ID <> e2.EMPLOYEE_ID) AS sub
ORDER BY 1 , 4;
