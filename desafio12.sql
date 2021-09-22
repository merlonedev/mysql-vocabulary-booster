SELECT
  CONCAT(T1.first_name, ' ', T1.last_name) AS `Nome completo funcionário 1`,
  T1.salary AS `Salário funcionário 1`,
  T1.phone_number AS `Telefone funcionário 1`,
  CONCAT(T2.first_name, ' ', T2.last_name) AS `Nome completo funcionário 2`,
  T2.salary AS `Salário funcionário 2`,
  T2.phone_number AS `Telefone funcionário 2`
FROM
  hr.employees AS T1,
  hr.employees AS T2
WHERE
  T1.job_id = T2.job_id
  AND CONCAT(T1.first_name, ' ', T1.last_name) <> CONCAT(T2.first_name, ' ', T2.last_name)
ORDER BY
  `Nome completo funcionário 1`,
  `Nome completo funcionário 2`;
