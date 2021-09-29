DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_empregos INT;
SELECT COUNT(jh.EMPLOYEE_ID) FROM job_history jh INNER JOIN employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO qtd_empregos;
RETURN qtd_empregos;
END

$$ DELIMITER ;

-- SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
