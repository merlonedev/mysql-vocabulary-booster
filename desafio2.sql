SELECT
  job_title AS `Cargo`,
  CASE
    WHEN max_salary > 30000 THEN 'Altíssimo'
    WHEN max_salary > 20000 THEN 'Alto'
    WHEN max_salary > 10000 THEN 'Médio'
    ELSE 'Baixo'
  END AS `Nível`
FROM
  hr.jobs
ORDER BY
  job_title;
