DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (val varchar(30))
RETURNS INT
READS SQL DATA 
BEGIN
RETURN (
SELECT 
    COUNT(jh.EMPLOYEE_ID)
FROM
    employees AS emp
        JOIN
    job_history AS jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE
    emp.EMAIL = val
    );
END
$$
DELIMITER ;
