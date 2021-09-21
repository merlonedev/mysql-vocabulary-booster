DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN nomeDoCargo VARCHAR(50))
BEGIN
  DECLARE cargoID VARCHAR(50);
    
SELECT 
    JOB_ID
INTO cargoID FROM
    hr.jobs
WHERE
    JOB_TITLE = nomeDoCargo;
    
SELECT 
    ROUND(AVG(SALARY), 2) AS 'Média salarial'
FROM
    hr.employees
WHERE
    JOB_ID = cargoID;
END $$

DELIMITER ;
