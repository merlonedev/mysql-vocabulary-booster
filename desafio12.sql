SELECT 
    CONCAT(emA.FIRST_NAME, ' ', emA.LAST_NAME) AS 'Nome completo funcionário 1',
    emA.SALARY AS 'Salário funcionário 1',
    emA.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(emB.FIRST_NAME, ' ', emB.LAST_NAME) AS 'Nome completo funcionário 2',
    emB.SALARY AS 'Salário funcionário 2',
    emB.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS emA,
    hr.employees AS emB
WHERE
    emA.JOB_ID = emB.JOB_ID
        AND CONCAT(emA.FIRST_NAME, ' ', emB.LAST_NAME) <> CONCAT(emB.FIRST_NAME, ' ', emB.LAST_NAME)
ORDER BY CONCAT(emA.FIRST_NAME, ' ', emA.LAST_NAME) , CONCAT(emB.FIRST_NAME, ' ', emB.LAST_NAME);
