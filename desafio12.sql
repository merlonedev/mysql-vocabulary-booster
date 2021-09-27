SELECT 
    e1.FIRST_NAME AS 'Nome completo funcionário 1',
    e1.SALARY AS 'Salário funcionário 1',
    e1.PHONE_NUMBER AS 'Telefone funcionário 1',
    e2.FIRST_NAME AS 'Nome completo funcionário 2',
    e2.SALARY AS 'Salário funcionário 2',
    e2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    employees AS e1,
    employees AS e2
WHERE
    e1.JOB_ID = e2.JOB_ID
        AND e1.FIRST_NAME <> e2.FIRST_NAME
ORDER BY e1.FIRST_NAME , e2.FIRST_NAME;
