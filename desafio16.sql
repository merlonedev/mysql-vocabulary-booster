DROP FUNCTION IF EXISTS hr.buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(64))
RETURNS INT READS SQL DATA
BEGIN
RETURN (SELECT 
    COUNT(*)
FROM
    hr.employees e
        JOIN
    hr.job_history h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL = 'NKOCHHAR');
END $$

DELIMITER ;

SELECT hr.buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
