SELECT UCASE(CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME)) AS `Nome completo`,
START_DATE AS `Data de início`,
SALARY AS `Salário`
FROM hr.job_history
INNER JOIN employees ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE MONTH(START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo` ASC, `Data de início` ASC;
