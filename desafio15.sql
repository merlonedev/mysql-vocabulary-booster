DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(40))
BEGIN
SELECT ROUND(AVG(s.salary), 2) as 'Média salarial'
FROM hr.employees as s 
join hr.jobs as J on J.JOB_ID = s.JOB_ID
WHERE J.JOB_TITLE = cargo;
END $$
DELIMITER ;