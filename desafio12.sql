SELECT DISTINCT
    CONCAT(emA.FIRST_NAME, ' ', emA.LAST_NAME) AS 'Nome completo funcionário 1',
    emA.SALARY AS 'Salário funcionário 1',
    emA.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(emB.FIRST_NAME, ' ', emB.LAST_NAME) AS 'Nome completo funcionário 2',
    emB.SALARY AS 'Salário funcionário 2',
    emB.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees emA
        RIGHT JOIN
    hr.employees emB ON emA.JOB_ID = emB.JOB_ID
WHERE
    emA.EMPLOYEE_ID <> emB.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`;
