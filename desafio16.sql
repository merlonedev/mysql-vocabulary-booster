USE hr;
DELIMITER $$

CREATE FUNCTION
  buscar_quantidade_de_empregos_por_funcionario(email_input VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE quantity INT;
  SELECT 
    COUNT(JH.JOB_ID)
  FROM
    hr.employees AS E
  INNER JOIN hr.job_history JH
  ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  WHERE
    E.EMAIL = email_input
GROUP BY JH.EMPLOYEE_ID
INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
