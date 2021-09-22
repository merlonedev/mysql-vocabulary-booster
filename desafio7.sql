SELECT 
    UCASE(CONCAT(EMP.FIRST_NAME, ' ', EMP.LAST_NAME)) AS `Nome completo`,
    JH.START_DATE AS `Data de início`,
    EMP.SALARY AS Salário
FROM
    job_history AS JH
        LEFT JOIN
    employees AS EMP ON JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID
WHERE
    MONTH(JH.START_DATE) IN (1 , 2, 3)
ORDER BY `Nome completo` , JH.START_DATE;
