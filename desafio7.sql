SELECT 
    UCASE(CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME)) AS 'Nome completo',
    jobh.START_DATE AS 'Data de início',
    em.SALARY AS 'Salário'
FROM
    hr.employees AS em
        INNER JOIN
    hr.job_history AS jobh ON em.EMPLOYEE_ID = jobh.EMPLOYEE_ID
WHERE
    MONTH(jobh.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` , `Data de início`;
