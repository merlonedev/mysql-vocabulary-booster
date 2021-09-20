SELECT
  CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
  J.JOB_TITLE AS `Cargo`,
  H.START_DATE AS 'Data de início do cargo',
  D.DEPARTMENT_NAME AS `Departamento`
FROM job_history H
INNER JOIN jobs J
  ON J.JOB_ID = H.JOB_ID
INNER JOIN employees E
  ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
INNER JOIN departments D
  ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, CARGO;
