-- 4 - Exiba a média salarial e o nível de senioridade de todas as pessoas empregadas, agrupadas pelo cargo

SELECT 
    jobs.JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY), 2) AS `Média salarial`,
    CASE
		WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(SALARY), 2) > 10500 THEN 'CEO'
	END AS `Senioridade`
FROM
    employees
        INNER JOIN
    jobs ON employees.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial` ASC, `Cargo` ASC;
