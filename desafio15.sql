USE hr;
DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN 
SELECT 
    ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM
    employees AS e
        JOIN
    jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE
    job = j.JOB_TITLE;
END $$ 

DELIMITER ;
