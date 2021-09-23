DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month VARCHAR(2), year VARCHAR(4))
RETURNS INT READS SQL DATA
BEGIN
DECLARE result  INT;
SELECT
    COUNT(*)
FROM
    employees
WHERE
    HIRE_DATE LIKE CONCAT(year,
            '-',
            IF(LENGTH(month) = 1,
                CONCAT(0, month),
                month), '-',
            '%') INTO result;
    RETURN result;
END $$
DELIMITER ;
