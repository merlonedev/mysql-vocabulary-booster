USE hr;
delimiter $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(10))
BEGIN 
SELECT ROUND(AVG(E.SALARY),2) AS 'Média salarial' 
FROM hr.employees AS E INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID 
WHERE cargo = J.JOB_TITLE;
END $$
delimiter ;

CALL buscar_media_por_cargo('Programmer');
