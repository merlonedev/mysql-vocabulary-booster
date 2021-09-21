DELIMITER $$

DROP PROCEDURE IF EXISTS buscar_media_por_cargo;

CREATE PROCEDURE buscar_media_por_cargo(IN nome_do_cargo VARCHAR(50))

BEGIN

SELECT 
    ROUND(AVG(e.SALARY), 2) AS `Média salarial`
FROM
    hr.employees AS e
WHERE
    e.JOB_ID IN (SELECT 
            j.JOB_ID
        FROM
            hr.jobs AS j
        WHERE
            j.JOB_TITLE = nome_do_cargo);
	
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
