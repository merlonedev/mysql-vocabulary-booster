SELECT
  (
    SELECT
      CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME)
    FROM
      hr.employees AS E
    WHERE
      E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  ) AS `Nome completo`,
  (
    SELECT
      J.JOB_TITLE
    FROM
      hr.jobs AS J
    WHERE
      J.JOB_ID = JH.JOB_ID
  ) AS `Cargo`,
  JH.START_DATE AS `Data de início do cargo`,
  (
    SELECT
      D.DEPARTMENT_NAME 
    FROM
      hr.departments AS D
    WHERE
      D.DEPARTMENT_ID = JH.DEPARTMENT_ID
  ) AS `Departamento`
FROM
  hr.job_history AS JH
WHERE
  CHAR_LENGTH(JH.JOB_ID) > 0
ORDER BY
  `Nome completo` DESC,
  `Cargo`;
