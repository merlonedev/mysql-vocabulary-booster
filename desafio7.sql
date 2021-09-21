SELECT DISTINCT
  UCASE(CONCAT(E.first_name, ' ', E.last_name)) AS `Nome completo`,
  H.start_date AS `Data de início`,
  E.salary AS `Salário`
FROM
  job_history AS H
JOIN
  hr.employees AS E
ON
  H.employee_id = E.employee_id
WHERE
  MONTH(H.start_date) IN (01, 02, 03)
ORDER BY
  UCASE(CONCAT(E.first_name, ' ', E.last_name)),
  H.start_date;
