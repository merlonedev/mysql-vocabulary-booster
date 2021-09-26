DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qty_jobs INT;
SELECT 
    COUNT(*)
FROM
    employees AS `em`
        INNER JOIN
    job_history AS `jh` ON em.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    em.EMAIL = email INTO qty_jobs;
    RETURN qty_jobs;
END $$

DELIMITER ;
