SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    e.SALARY AS `Salário`
FROM
    job_history AS jh
        INNER JOIN
    employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) IN (01,02,03)
ORDER BY `Nome completo`, `Salário`;
