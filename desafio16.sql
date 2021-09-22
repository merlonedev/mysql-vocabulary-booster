DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emp_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE job_quantity INT;
SELECT 
    COUNT(*)
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    e.EMAIL = emp_email INTO job_quantity;
    RETURN job_quantity;
END $$

DELIMITER ;
