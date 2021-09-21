SELECT 
    job.JOB_TITLE AS `Cargo`,
    ROUND(AVG(SALARY)) AS `Média salarial`,
    CASE
		WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
		WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
		WHEN ROUND(AVG(emp.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS `Senioridade`
FROM
    hr.employees AS emp
    INNER JOIN hr.jobs AS job ON job.JOB_ID = emp.JOB_ID
GROUP BY JOB_TITLE
ORDER BY `Média salarial` ASC, `Cargo`;
