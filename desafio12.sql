SELECT
  CONCAT(t1.First_Name, ' ', t1.Last_Name) AS `Nome completo funcionário 1`,
  t1.salary AS `Salário funcionário 1`,
  t1.phone_number AS `Telefone funcionário 1`,
  CONCAT(t2.First_Name, ' ', t2.Last_Name) AS `Nome completo funcionário 2`,
  t2.salary AS `Salário funcionário 2`,
  t2.phone_number AS `Telefone funcionário 2`
FROM
  employees AS t1,
  employees AS t2
WHERE
  t1.job_id = t2.job_id
  AND CONCAT(t1.First_Name, ' ', t1.Last_Name) <> CONCAT(t2.First_Name, ' ', t2.Last_Name)
ORDER BY
  1,
  4;
