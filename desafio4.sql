SELECT 
  JOB_TITLE AS Cargo,
  ROUND((MAX_SALARY - MIN_SALARY)/2, 2) AS "Média salarial",
  CASE
    WHEN "Média salarial" BETWEEN 2000 AND 5800 THEN "Júnior"
    WHEN "Média salarial" BETWEEN 5801 AND 7500 THEN "Pleno"
    WHEN "Média salarial" BETWEEN 7501 AND 10500 THEN "Sénior"
    ELSE "CEO"
  END AS "Senioridade"
FROM hr.jobs ORDER BY ROUND((MAX_SALARY - MIN_SALARY)/2, 2), JOB_TITLE;
