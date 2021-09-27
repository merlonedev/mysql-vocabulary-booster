SELECT
  CONCAT (e.first_name," ", e.last_name) AS "Nome completo",
  DATE_FORMAT(jh.START_DATE, "%d/%m/%Y") AS "Data de início",
  DATE_FORMAT(jh.END_DATE, "%d/%m/%Y") AS "Data de rescisão",
  ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2) AS "Anos trabalhados"
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY CONCAT (e.first_name," ", e.last_name), ROUND(DATEDIFF(jh.END_DATE, jh.START_DATE)/365, 2);
