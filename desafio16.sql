-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, 
-- retorne a quantidade de empregos presentes em seu histórico. Usar banco hr.
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".
USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN

DECLARE numeroDeEmpregos INT;
SELECT COUNT(jh.EMPLOYEE_ID) 
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email INTO numeroDeEMpregos;
RETURN numeroDeEmpregos;

END $$

DELIMITER ;
