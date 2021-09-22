USE hr;

DROP FUNCTION IF EXISTS buscar_quantidade_de_empregos_por_funcionario;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE HistoryCount INT;
SELECT 
    COUNT(*)
FROM
    hr.job_history jh
WHERE
    jh.EMPLOYEE_ID IN (SELECT 
            emp.EMPLOYEE_ID
        FROM
            hr.employees emp
        WHERE
            emp.EMAIL = email) INTO HistoryCount;
RETURN HistoryCount;
END $$

DELIMITER ;
