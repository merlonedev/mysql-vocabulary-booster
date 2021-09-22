USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT(2), ano INT(4))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE contratados INT;
  SELECT COUNT(*) 
    FROM hr.employees AS e
  WHERE YEAR(e.hire_date) = ano 
    AND MONTH(e.hire_date) = mes
  INTO contratados;
  RETURN contratados;
END $$
DELIMITER ;
SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(10, 1987);
