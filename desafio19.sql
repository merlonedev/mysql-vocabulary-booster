CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT) 
RETURNS int
READS SQL DATA
BEGIN
DECLARE result INT;
SELECT COUNT(*) FROM employees AS employees WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO result;
RETURN result;
END
