DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
BEGIN
    SELECT
        ROUND(AVG(em.SALARY), 2) AS `Média salarial`
    FROM
        employees AS `em`
    INNER JOIN jobs AS `j`
    ON em.JOB_ID = j.JOB_ID
    WHERE j.JOB_TITLE = job;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
