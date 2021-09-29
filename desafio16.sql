USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE amount_jobs INT;
SELECT
COUNT(emp.EMPLOYEE_ID) AS `total_empregos`
FROM
hr.employees AS emp
INNER JOIN
	hr.job_history AS hist ON hist.EMPLOYEE_ID = emp.EMPLOYEE_ID
        WHERE emp.EMAIL = email INTO amount_jobs;
        RETURN amount_jobs;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
