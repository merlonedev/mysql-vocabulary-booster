DELIMITER $$
USE `hr`$$
CREATE PROCEDURE `buscar_media_por_cargo`(IN cargo VARCHAR(30))
BEGIN
	SELECT ROUND(AVG(employees.SALARY),2) AS 'Média salarial' FROM employees AS employees INNER JOIN jobs as jobs ON jobs.JOB_ID = employees.JOB_ID WHERE jobs.JOB_TITLE = cargo;
END$$
DELIMITER ;