DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano (mes int, ano int )
RETURNS INT
READS SQL DATA 
BEGIN
RETURN (
SELECT 
    COUNT(employee_id)
FROM
    employees
WHERE
    YEAR(hire_date) = ano
        AND MONTH(hire_date) = mes
    );
END
$$
DELIMITER ;
