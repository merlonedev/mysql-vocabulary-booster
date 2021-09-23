DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(64))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE history_quantity INT;
    SELECT 
      COUNT(*)
    FROM
      hr.job_history AS h
    JOIN
      hr.employees AS e ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE
      e.EMAIL = email INTO history_quantity;
    RETURN history_quantity;
END $$
DELIMITER ;
