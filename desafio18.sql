SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome completo`,
    CONCAT(DAY(START_DATE),
            '/',
            MONTH(START_DATE),
            '/',
            YEAR(START_DATE)) AS `Data de início`,
    CONCAT(DAY(END_DATE),
            '/',
            MONTH(END_DATE),
            '/',
            YEAR(END_DATE)) AS `Data de rescisão`,
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    hr.job_history AS jh
WHERE
    EMPLOYEE_ID <> 0
ORDER BY `Nome completo` , `Anos trabalhados`;
