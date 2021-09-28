USE hr;

DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job TEXT)
BEGIN
SELECT ROUND(AVG(SALARY), 2) as 'Média salarial'
FROM employees AS e
INNER JOIN jobs AS j
ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE = job
GROUP BY JOB_TITLE;
END $$;

DELIMITER ;

call buscar_media_por_cargo('Programmer');
