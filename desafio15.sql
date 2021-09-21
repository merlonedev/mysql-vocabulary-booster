DELIMITER $$

Create Procedure buscar_media_por_cargo (in cargo VARCHAR(50))
BEGIN
select ROUND(AVG(e.SALARY), 00) AS 'Média salarial' from hr.employees as e
INNER JOIN hr.jobs as j on j.JOB_ID = e.JOB_ID
WHERE JOB_TITLE = cargo;
END $$

DELIMITER ;
