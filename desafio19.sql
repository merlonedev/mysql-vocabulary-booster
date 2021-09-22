DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes TINYINT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) FROM hr.employees
    WHERE HIRE_DATE LIKE CONCAT(ano, '-_', mes, '%')
    INTO quantity;
    RETURN quantity;
END $$

DELIMITER ;
