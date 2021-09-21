DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(200))
BEGIN
SELECT 
  ROUND(AVG(e.SALARY), 2) AS 'Média salarial' 
  FROM hr.employees AS e
  JOIN hr.jobs AS j
  ON j.JOB_TITLE = cargo
  WHERE j.JOB_ID = e.JOB_ID;
END $$

DELIMITER ;
