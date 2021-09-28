DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300))
BEGIN 
SELECT
ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM hr.employees AS em
INNER JOIN hr.jobs AS jobs ON em.JOB_ID = jobs.JOB_ID
WHERE jobs.JOB_TITLE = cargo;
END $$

DELIMITER ;
