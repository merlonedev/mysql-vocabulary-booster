USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT 
    COUNT(jh.EMPLOYEE_ID) AS `Histórico Cargos`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email INTO total;
RETURN total;
END $$

DELIMITER ;
