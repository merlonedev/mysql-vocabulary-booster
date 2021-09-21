SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS `Nome completo`,
    jh.START_DATE AS `Data de início`,
    e.SALARY AS 'Salário'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON e.JOB_ID = jh.JOB_ID
ORDER BY `Nome completo` , `Data de início` ASC;
