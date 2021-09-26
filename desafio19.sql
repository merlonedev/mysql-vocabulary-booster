USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE total INT;
    SELECT COUNT(*) 
    FROM employees 
    WHERE MONTH(hire_date) = mes and YEAR(hire_date) = ano
    INTO total;
    RETURN total;
END $$

DELIMITER ;
