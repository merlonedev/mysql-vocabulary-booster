-- select job_id, ROUND(AVG(salary), 2) from employees group by job_id;
-- use hr;
SELECT 
    (SELECT 
            j.job_title
        FROM
            jobs AS j
        WHERE
            j.job_id = e.job_id) AS 'Cargo',
    ROUND(AVG(salary), 2) AS 'Média salarial',
    CASE
        WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        WHEN ROUND(AVG(salary), 2) > 10500 THEN 'CEO'
    END AS 'Senioridade'
FROM
    employees AS e
GROUP BY job_id
ORDER BY `Média salarial` , Cargo;
