SELECT
  CONCAT (e.first_name," ", e.last_name) AS  "Nome completo",
  SALARY,
  PHONE_NUMBER
FROM hr.employees AS e;
