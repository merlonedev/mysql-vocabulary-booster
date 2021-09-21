SELECT 
    UCASE(CONCAT(i.FIRST_NAME, ' ', i.LAST_NAME)) AS 'Nome completo',
    h.START_DATE AS 'Data de início',
    i.SALARY AS 'Salário'
FROM
    hr.job_history AS h
        INNER JOIN
    hr.employees AS i ON i.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
    MONTH(h.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` , `Data de início`;
