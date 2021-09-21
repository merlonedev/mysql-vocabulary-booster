USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo (IN job_name VARCHAR(20))
BEGIN
	SELECT ROUND(AVG(salary), 2) 'Média salarial' FROM employees e
    WHERE e.job_id IN (
		SELECT j.job_id FROM jobs j
        WHERE j.job_title = job_name);
END $$
DELIMITER ;
