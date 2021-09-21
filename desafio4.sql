SELECT
  J.JOB_TITLE AS `Cargo`,
  (
    SELECT
      ROUND(AVG(E.SALARY), 2)
    FROM
      hr.employees AS E
    GROUP BY
      E.JOB_ID
    HAVING
      E.JOB_ID = J.JOB_ID
  ) AS `Média salarial`,
  (
    SELECT
    CASE
      WHEN `Média salarial` BETWEEN 2000 AND 5800 THEN 'Júnior'
      WHEN `Média salarial` BETWEEN 5801 AND 7500 THEN 'Pleno'
      WHEN `Média salarial` BETWEEN 7501 AND 10500 THEN 'Sênior'
      WHEN `Média salarial` > 10500 THEN 'CEO'
    END
  ) AS `Senioridade`
FROM
  hr.jobs AS J
ORDER BY
  `Média salarial`,
  `Cargo`;
