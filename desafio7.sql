SELECT
    UPPER(CONCAT(employee.FIRST_NAME,
                    ' ',
                    employee.LAST_NAME)) AS 'Nome completo',
    jhistory.START_DATE AS 'Data de início',
    employee.SALARY AS 'Salário'
FROM
    hr.employees AS employee
        INNER JOIN
    hr.job_history AS jhistory ON employee.EMPLOYEE_ID = jhistory.EMPLOYEE_ID
WHERE
    MONTH(jhistory.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo` ASC , `Data de início` ASC;
