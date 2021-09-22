DELIMITER $$

Create FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_empregos INT;
SELECT 
COUNT(jh.EMPLOYEE_ID)
FROM
    job_history AS jh
INNER JOIN
    employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    email = e.EMAIL INTO qtd_empregos;
return qtd_empregos;
END $$

DELIMITER ;
