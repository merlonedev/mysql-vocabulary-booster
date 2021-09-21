USE hr;

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(_month INT, _year INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantity INT;
	SELECT COUNT(*) FROM hr.employees
	WHERE MONTH(hire_date) = _month AND YEAR(hire_date) = _year
    INTO quantity;
    RETURN quantity;
END $$
DELIMITER ;
