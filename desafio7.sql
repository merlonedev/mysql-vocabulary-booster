SELECT 
    UCASE(CONCAT(em.FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    em.SALARY AS `Salário`
FROM
    employees AS `em`
INNER JOIN job_history AS `jh`
ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) <= 3
ORDER BY `Nome completo`, `Data de início`;