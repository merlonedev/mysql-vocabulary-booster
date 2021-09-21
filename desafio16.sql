USE hr;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(200))
  RETURNS INT
  READS SQL DATA
BEGIN
  DECLARE jobs_quantity INT;
  SELECT
    (
      SELECT
        COUNT(*)
      FROM
        hr.job_history AS JH
      WHERE
        JH.EMPLOYEE_ID = E.EMPLOYEE_ID
    )
  FROM
    hr.employees AS E
  WHERE
    E.EMAIL = employeeEmail
  INTO
    jobs_quantity;
  RETURN jobs_quantity;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS `total_empregos`;