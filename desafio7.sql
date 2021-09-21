SELECT
    CONCAT(ucase(employees.FIRST_NAME),
            ' ',
            ucase(employees.LAST_NAME)) AS `Nome completo`,
    j_history.START_DATE AS `Data de início`,
    employees.SALARY AS Salário
FROM
hr.job_history AS j_history
        JOIN
hr.employees AS employees ON employees.EMPLOYEE_ID = j_history.EMPLOYEE_ID
WHERE
MONTH(j_history.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
