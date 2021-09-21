SELECT CONCAT(employees.FIRST_NAME,' ',employees.LAST_NAME) AS `Nome Completo`,
    job_history.START_DATE AS `Data de início do cargo`,
    employees.SALARY AS `Salário`
FROM
    job_history AS job_history INNER JOIN employees AS employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE
    MONTH(job_history.START_DATE) BETWEEN 1 AND 3
ORDER BY CONCAT(employees.FIRST_NAME,' ',
        employees.LAST_NAME) ASC , job_history.START_DATE ASC;

        