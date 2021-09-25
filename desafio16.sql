USE hr;
DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emeio VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE total INT;
  SELECT count(*) FROM job_history
  WHERE EMPLOYEE_ID = ANY (SELECT EMPLOYEE_ID FROM employees WHERE EMAIL = emeio)
  INTO total;
  RETURN total;
END $$;
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
