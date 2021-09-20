DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
  SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM hr.employees E
  WHERE EXISTS (
	SELECT * FROM hr.jobs J
    WHERE J.JOB_TITLE LIKE (cargo)
    AND E.JOB_ID = J.JOB_ID
  );
END $$
DELIMITER ;
