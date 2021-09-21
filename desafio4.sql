SELECT
  J.job_title AS `Cargo`,
  ROUND(AVG(E.salary), 2) AS `Média salarial`,
  CASE
    WHEN ROUND(AVG(E.salary), 2) > 10500 THEN 'CEO'
    WHEN ROUND(AVG(E.salary), 2) > 7500 THEN 'Sênior'
    WHEN ROUND(AVG(E.salary), 2) > 5800 THEN 'Pleno'
    ELSE 'Júnior'
  END AS `Senioridade`
FROM
  hr.employees AS E
JOIN
  hr.jobs AS J
ON
  E.job_id = J.job_id
GROUP BY
  E.job_id
ORDER BY
  ROUND(AVG(salary), 2),
  J.job_title;
