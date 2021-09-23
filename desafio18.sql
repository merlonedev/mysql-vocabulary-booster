SELECT
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    CONCAT(IF(LENGTH(DAY(jh.START_DATE)) = 1,
                CONCAT(0, DAY(jh.START_DATE)),
                DAY(jh.START_DATE)),
            '/',
            IF(LENGTH(MONTH(jh.START_DATE)) = 1,
                CONCAT(0, MONTH(jh.START_DATE)),
                MONTH(jh.START_DATE)),
            '/',
            YEAR(jh.START_DATE)) AS 'Data de início',
    CONCAT(DAY(jh.END_DATE),
            '/',
            IF(LENGTH(MONTH(jh.END_DATE)) = 1,
                CONCAT(0, MONTH(jh.END_DATE)),
                MONTH(jh.END_DATE)),
            '/',
            YEAR(jh.END_DATE)) AS 'Data de rescisão',
    ROUND(DATEDIFF(END_DATE, START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
    job_history AS jh
        INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
