SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            EMPLOYEE_ID = jh.EMPLOYEE_ID) AS `Nome completo`,
    CONCAT(IF (DAY(START_DATE) < 10, CONCAT('0', DAY(START_DATE)), DAY(START_DATE)),
            '/',
            IF (MONTH(START_DATE) < 10, CONCAT('0', MONTH(START_DATE)), MONTH(START_DATE)),
            '/',
            YEAR(START_DATE)) AS `Data de início`,
    CONCAT(IF (DAY(END_DATE) < 10, CONCAT('0', DAY(END_DATE)), DAY(END_DATE)),
            '/',
            IF (MONTH(END_DATE) < 10, CONCAT('0', MONTH(END_DATE)), MONTH(END_DATE)),
            '/',
            YEAR(END_DATE)) AS `Data de rescisão`,
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    hr.job_history AS jh
WHERE
    EMPLOYEE_ID <> 0
ORDER BY `Nome completo` , `Anos trabalhados`;
