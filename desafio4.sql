SELECT job.JOB_TITLE AS 'Cargo',
ROUND(AVG(sal.salary), 2) AS 'Média salarial',
CASE
 WHEN ROUND(AVG(sal.salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
 WHEN ROUND(AVG(sal.salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
 WHEN ROUND(AVG(sal.salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
 WHEN ROUND(AVG(sal.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS sal
INNER JOIN hr.jobs AS job ON sal.JOB_ID = job.JOB_ID
GROUP BY sal.JOB_ID
ORDER BY ROUND(AVG(sal.salary), 2) ASC , job.JOB_TITLE ASC;
