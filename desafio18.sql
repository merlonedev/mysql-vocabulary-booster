SELECT 
    CONCAT(ep.FIRST_NAME, ' ', ep.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE) / 365,
            2) AS `Anos trabalhados`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS ep ON jh.EMPLOYEE_ID = ep.EMPLOYEE_ID
ORDER BY `Nome completo` ASC , `Anos trabalhados` ASC;
