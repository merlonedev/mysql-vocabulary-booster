DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(200))
BEGIN
SELECT
    ROUND(AVG(EM.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS EM
    INNER JOIN hr.jobs AS JO
    ON JO.JOB_TITLE = cargo
    WHERE JO.JOB_ID = EM.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
