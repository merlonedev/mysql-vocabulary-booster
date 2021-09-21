DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employee_email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quant INT;
SELECT 
    COUNT(jh.EMPLOYEE_ID)
FROM
    hr.job_history jh
        INNER JOIN
    (SELECT 
        *
    FROM
        hr.employees
    WHERE
        EMAIL = employee_email) e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
GROUP BY jh.EMPLOYEE_ID INTO quant;
    RETURN quant;
END $$

DELIMITER ;
