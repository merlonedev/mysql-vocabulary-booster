SELECT
  CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
  e.SALARY AS `Salário funcionário 1`,
  e.PHONE_NUMBER AS `Telefone funcionário 1`,
  CONCAT(f.FIRST_NAME, ' ', f.LAST_NAME) AS `Nome completo funcionário 2`,
  f.SALARY AS `Salário funcionário 2`,
  f.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
  hr.employees AS e,
  hr.employees AS f
WHERE
  e.JOB_ID = f.JOB_ID
  AND e.EMPLOYEE_ID != f.EMPLOYEE_ID
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
