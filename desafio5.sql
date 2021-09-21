SELECT
  J.job_title AS `Cargo`,
  (ROUND(AVG(J.max_salary)) - ROUND(AVG(J.min_salary))) AS `Variação Salarial`,
  ROUND(AVG(J.min_salary / 12), 2) AS `Média mínima mensal`,
  ROUND(AVG(J.max_salary / 12), 2) AS `Média máxima mensal`
FROM
  hr.employees AS E
JOIN
  hr.jobs AS J
ON
  E.job_id = J.job_id
GROUP BY
  E.job_id
ORDER BY
  (ROUND(AVG(J.max_salary)) - ROUND(AVG(J.min_salary))),
  J.job_title;
