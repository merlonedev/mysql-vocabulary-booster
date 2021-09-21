drop function if exists buscar_quantidade_de_empregos_por_funcionario;

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(selectedEmail varchar(100))
RETURNS int READS SQL DATA
BEGIN
    declare total_empregos int;
SELECT 
    (SELECT 
            COUNT(*)
        FROM
            hr.job_history
        WHERE
            EMPLOYEE_ID = e.EMPLOYEE_ID)
FROM
    hr.employees AS e
WHERE
    EMAIL = selectedEmail INTO total_empregos;
    RETURN total_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS 'total_empregos';
