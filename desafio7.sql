SELECT
  UCASE(CONCAT (e.first_name," ", e.last_name)) AS  "Nome completo",
    h.START_DATE AS "Data de início",
    e.SALARY AS "Salário"
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY e.FIRST_NAME, h.START_DATE;
