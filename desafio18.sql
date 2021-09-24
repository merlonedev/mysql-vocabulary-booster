SELECT 
    CONCAT(employees.FIRST_NAME,
            ' ',
            employees.LAST_NAME) AS `Nome completo`,
    CONCAT(RIGHT(job_history.START_DATE, 2),
            '/',
            SUBSTRING(job_history.START_DATE, -5, 2),
            '/',
            LEFT(job_history.START_DATE, 4)) AS `Data de início`,
    CONCAT(RIGHT(job_history.END_DATE, 2),
            '/',
            SUBSTRING(job_history.END_DATE, -5, 2),
            '/',
            LEFT(job_history.END_DATE, 4)) AS `Data de rescisão`,
    ROUND(DATEDIFF(job_history.END_DATE,
                    job_history.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS job_history
        INNER JOIN
    hr.employees AS employees ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
ORDER BY `Nome completo` , `Anos trabalhados`;
