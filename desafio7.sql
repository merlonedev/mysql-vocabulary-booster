SELECT
  (
    SELECT
      UCASE(CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME))
    FROM
      hr.employees AS E
    WHERE
      E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  ) AS `Nome completo`,
  START_DATE AS `Data de início`,
  (
    SELECT
      E.SALARY
    FROM
      hr.employees AS E
    WHERE
      E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  ) AS `Salário`
FROM
  hr.job_history AS JH
WHERE
  MONTH(JH.START_DATE) BETWEEN 1 AND 3
ORDER BY
  `Nome completo`,
  `Data de início`;