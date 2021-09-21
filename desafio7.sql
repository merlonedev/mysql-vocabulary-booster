SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
    j.START_DATE AS `Data de início`,
    e.SALARY AS `Salário`
FROM
    job_history AS j
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE
    MONTH(j.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo` ASC , `Data de início` ASC;
