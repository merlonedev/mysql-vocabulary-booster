USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
    RETURN (
        SELECT 
            COUNT(*)
        FROM
            hr.employees AS E
        WHERE
            MONTH(E.hire_date) = mes
                AND YEAR(E.hire_date) = ano
    );
END $$

DELIMITER ;
