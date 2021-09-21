SELECT 
  (SELECT UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) FROM hr.employees WHERE hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) AS `Nome completo`,
  START_DATE AS `Data de início`,
  (SELECT SALARY FROM hr.employees WHERE hr.job_history.EMPLOYEE_ID = hr.employees.EMPLOYEE_ID) AS `Salário`
FROM hr.job_history
WHERE MONTH(START_DATE) < 4
ORDER BY `Nome completo` ASC, START_DATE ASC;
