CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(30)) 
BEGIN
SELECT ROUND(AVG(em.SALARY),2) AS `Média salarial` FROM employees AS em JOIN jobs as jb ON jb.JOB_ID = em.JOB_ID WHERE jb.JOB_TITLE = cargo
END $
