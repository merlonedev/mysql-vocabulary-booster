USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(SALARY), 2) AS "Média salarial"
    FROM employees
    WHERE JOB_ID = ANY (SELECT JOB_ID FROM jobs WHERE JOB_TITLE = cargo);
END $$;
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
