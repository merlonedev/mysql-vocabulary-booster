DELIMITER $$ CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(300)) BEGIN SELECT ROUND(AVG(SALARY), 2) FROM hr.employees AS emp INNER JOIN hr.jobs AS jobs ON emp.JOB_ID = jobs.JOB_ID WHERE jobs.JOB_TITLE = cargo;
END $$ DELIMITER ;

