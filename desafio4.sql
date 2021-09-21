SELECT sub.Cargo, sub.`Média salarial`,
CASE
WHEN sub.`Média salarial` <= 5800 THEN 'Júnior'
WHEN sub.`Média salarial` > 5800 AND sub.`Média salarial` <= 7500 THEN 'Pleno'
WHEN sub.`Média salarial` > 7500 AND sub.`Média salarial` <= 10500 THEN 'Sênior'
WHEN sub.`Média salarial` > 10500 THEN 'CEO'
ELSE 'Valor sem categoria'
END
AS 'Senioridade'
FROM (
SELECT j.JOB_TITLE AS 'Cargo', ROUND(AVG(e.SALARY), 2) AS 'Média salarial' FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON e.JOB_ID = j.JOB_ID
GROUP BY j.JOB_TITLE
) AS sub
ORDER BY sub.`Média salarial`, sub.Cargo;
