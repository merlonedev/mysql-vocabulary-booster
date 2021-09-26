SELECT 
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(MAX_SALARY) - AVG(MIN_SALARY)) AS 'Variação Salarial',
    ROUND(AVG(j.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    ROUND(AVG(j.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    hr.jobs AS j
        JOIN
    hr.employees AS e ON e.JOB_ID = j.JOB_ID
GROUP BY e.JOB_ID
ORDER BY ROUND(AVG(j.MAX_SALARY) - AVG(j.MIN_SALARY)) ASC , j.JOB_TITLE ASC;
