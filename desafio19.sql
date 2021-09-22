USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE QNT INT;
    SELECT COUNT(*)
    FROM hr.employees
    WHERE MONTH(HIRE_DATE) LIKE CONCAT('%',mes) AND YEAR(HIRE_DATE) LIKE CONCAT('%',ano) INTO QNT;
    RETURN QNT;
END
$$

DELIMITER ;
