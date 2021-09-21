USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN average varchar(50))
BEGIN
  SELECT
    ROUND(AVG (e.salary), 2) AS `Média salarial`
      FROM 
        hr.employees AS e
      JOIN
        hr.jobs AS j ON e.JOB_ID = j.JOB_ID
    where j.JOB_TITLE = 'Programmer';
END $$

DELIMITER ;
CALL buscar_media_por_cargo('Programmer');
