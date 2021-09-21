SELECT
  (
    SELECT
      CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)
    FROM
      hr.employees AS E
    WHERE
      E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  ) AS `Nome completo`,
  DATE_FORMAT(JH.START_DATE, '%d/%m/%Y') AS `Data de início`,
  DATE_FORMAT(JH.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
  ROUND((DATEDIFF(JH.END_DATE, JH.START_DATE) / 365), 2) AS `Anos trabalhados`
FROM
  hr.job_history AS JH
WHERE
  CHAR_LENGTH(JH.JOB_ID) > 0
ORDER BY
  `Nome completo`,
  `Anos trabalhados`;
