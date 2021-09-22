USE hr;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (EMAIL VARCHAR(150))
RETURNS INT DETERMINISTIC
RETURN (SELECT COUNT(*)
FROM hr.job_history JH
INNER JOIN hr.employees E
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE E.EMAIL = EMAIL);

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS `total_empregos`;
