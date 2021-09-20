SELECT
CONCAT(UPPER(E.FIRST_NAME), ' ', UPPER(E.LAST_NAME)) AS `Nome completo`,
H.START_DATE AS `Data de início`,
E.SALARY AS `Salário`
FROM hr.employees E
INNER JOIN job_history H
  ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE MONTH(H.START_DATE) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
