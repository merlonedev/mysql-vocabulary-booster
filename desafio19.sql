USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantity INT;
SELECT 
  COUNT(*) 
FROM 
  employees
WHERE
  MONTH(HIRE_DATE) = 6
    AND YEAR(HIRE_DATE) = 1987 INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
