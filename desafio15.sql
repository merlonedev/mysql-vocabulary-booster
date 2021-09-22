DELIMITER $$

CREATE PROCEDURE
buscar_media_por_cargo(IN cargo varchar(30))
BEGIN
SELECT 
    ROUND(AVG(Salary), 2) AS 'Média salarial'
FROM
    employees AS emp
        JOIN
    jobs AS jb ON emp.job_id = jb.job_id
GROUP BY jb.job_title
HAVING jb.job_title = cargo;
END

$$

DELIMITER ;
