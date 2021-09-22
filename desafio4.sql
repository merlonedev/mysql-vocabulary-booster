SELECT 
  t.JOB_TITLE AS 'Cargo', 
  ROUND(
    AVG(s.SALARY), 
    2
  ) 'Média salarial', 
  CASE WHEN AVG(s.SALARY) BETWEEN 2000 
  AND 5800 THEN 'Júnior' WHEN AVG(s.SALARY) BETWEEN 5801 
  AND 7500 THEN 'Pleno' WHEN AVG(s.SALARY) BETWEEN 7501 
  AND 10500 THEN 'Sênior' WHEN AVG(s.SALARY) > 10500 THEN 'CEO' END AS 'Senioridade' 
FROM 
  hr.jobs t 
  INNER JOIN hr.employees s ON t.JOB_ID = s.JOB_ID 
GROUP BY 
  `Cargo` 
ORDER BY 
  `Média Salarial`, 
  `Cargo`;

