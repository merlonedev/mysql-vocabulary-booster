DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(40))
RETURNS INT READS SQL DATA
BEGIN
DECLARE JobQuantity TINYINT;
SELECT COUNT(emp.FIRST_NAME)
    FROM hr.job_history AS jh
JOIN 
hr.employees AS emp ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE emp.EMAIL = 'NKOCHHAR'
GROUP BY jh.EMPLOYEE_ID
    INTO JobQuantity;
    RETURN JobQuantity;
END $$

DELIMITER ;
