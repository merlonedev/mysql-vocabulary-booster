SELECT 
    UCASE(CONCAT(EM.FIRST_NAME, ' ', EM.LAST_NAME)) AS 'Nome completo',
    JBH.START_DATE AS 'Data de início',
    EM.SALARY AS 'Salário'
FROM
    hr.job_history AS JBH
        INNER JOIN
    hr.employees AS EM ON EM.EMPLOYEE_ID = JBH.EMPLOYEE_ID
WHERE
    MONTH(JBH.START_DATE) = 01
        OR MONTH(JBH.START_DATE) = 02
        OR MONTH(JBH.START_DATE) = 03
ORDER BY `Nome completo` , `Data de início`;
