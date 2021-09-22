SELECT 
    UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)) AS 'Nome completo',
    JO.START_DATE AS 'Data de início',
    E.SALARY AS 'Salário'
FROM
    hr.job_history AS JO
        INNER JOIN
    hr.employees AS E ON JO.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE
    MONTH(JO.START_DATE) <= '03'
ORDER BY `Nome completo` , `Data de início`;
