-- DROP PROCEDURE IF EXISTS buscar_media_por_cargo;
USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job_title VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial` FROM employees
WHERE JOB_ID IN (SELECT JOB_ID FROM jobs WHERE JOB_TITLE = job_title);
END

$$ DELIMITER ;

-- CALL buscar_media_por_cargo('programmer');
