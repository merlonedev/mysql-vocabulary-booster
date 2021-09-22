DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailFuncionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numeroDeEmpregos INT;
DECLARE idFuncionarioSelecionado INT;
SELECT EMPLOYEE_ID
FROM employees
WHERE EMAIL LIKE CONCAT('%', emailFuncionario, '%')
INTO idFuncionarioSelecionado;
SELECT COUNT(*)
FROM job_history
WHERE EMPLOYEE_ID = idFuncionarioSelecionado
INTO numeroDeEmpregos;
RETURN numeroDeEmpregos;
END &&

DELIMITER ;
