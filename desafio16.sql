USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(busca VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE Empregos INT;
SELECT 
    COUNT(*) AS 'Qnt'
FROM
    hr.job_history AS j
        INNER JOIN
    hr.employees AS e ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE CONCAT('%', busca, '%') INTO Empregos;
RETURN Empregos;
END $$
DELIMITER ;
