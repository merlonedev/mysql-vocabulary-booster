SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
    START_DATE AS `Data de início`,
    SALARY AS `Salário`
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS J ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE
    MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` , `Salário`;
