DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(64))
BEGIN
  SELECT 
    ROUND(AVG(e.salary), 2) AS `Média salarial`
  FROM 
    hr.employees AS e
  JOIN 
    hr.jobs AS j 
  ON j.JOB_ID = e.JOB_ID
  WHERE j.JOB_TITLE = job;
END $$
DELIMITER ;
