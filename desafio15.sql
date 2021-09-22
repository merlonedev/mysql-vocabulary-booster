USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(20))
BEGIN
    SELECT 
        ROUND(AVG(E.salary), 2) AS `Média salarial`
    FROM
        hr.employees AS E
    INNER JOIN hr.jobs AS J
    ON J.JOB_ID = E.JOB_ID
    WHERE J.JOB_TITLE = cargo
    GROUP BY E.JOB_ID;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
