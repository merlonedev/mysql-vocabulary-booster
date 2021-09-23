SELECT 
    CONCAT(EM.FIRST_NAME, ' ', EM.LAST_NAME) AS 'Nome completo funcionário 1',
    EM.SALARY AS 'Salário funcionário 1',
    EM.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(EM2.FIRST_NAME, ' ', EM2.LAST_NAME) AS 'Nome completo funcionário 2',
    EM2.SALARY AS 'Salário funcionário 2',
    EM2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS EM,
    hr.employees AS EM2
WHERE
    EM.JOB_ID = EM2.JOB_ID
        AND CONCAT(EM.FIRST_NAME, ' ', EM.LAST_NAME) <> CONCAT(EM2.FIRST_NAME, ' ', EM2.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
