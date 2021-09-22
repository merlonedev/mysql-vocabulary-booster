SELECT
CONCAT(e1.FIRST_NAME, ' ', e1.LAST_NAME) AS `Nome completo funcionário 1`,
e1.SALARY AS `Salário funcionário 1`,
e1.PHONE_NUMBER AS `Telefone funcionário 1`,

(SELECT
CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME)
FROM hr.employees AS e2
WHERE e2.JOB_ID = e1.JOB_ID AND CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME) <> `Nome completo funcionário 1`
  ORDER BY CONCAT(e2.FIRST_NAME, ' ', e2.LAST_NAME)
LIMIT 1) AS `Nome completo funcionário 2`,

(SELECT
e3.SALARY
FROM hr.employees AS e3
WHERE e3.JOB_ID = e1.JOB_ID AND CONCAT(e3.FIRST_NAME, ' ', e3.LAST_NAME) <> `Nome completo funcionário 1`
  ORDER BY CONCAT(e3.FIRST_NAME, ' ', e3.LAST_NAME)
LIMIT 1) AS `Salário funcionário 2`,

(SELECT
e4.PHONE_NUMBER
FROM hr.employees AS e4
WHERE e4.JOB_ID = e1.JOB_ID AND CONCAT(e4.FIRST_NAME, ' ', e4.LAST_NAME) <> `Nome completo funcionário 1`
  ORDER BY CONCAT(e4.FIRST_NAME, ' ', e4.LAST_NAME)
LIMIT 1) AS `Telefone funcionário 2`
FROM hr.employees AS e1
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
