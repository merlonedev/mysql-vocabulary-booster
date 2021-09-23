USE hr;
DELIMITER $$ 

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN 
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DEPARTMENT_NAME AS `Departamento`,
    JOB_TITLE AS `Cargo`
FROM
    employees AS e
        JOIN
    job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        JOIN
    departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
        JOIN
    jobs AS j ON j.JOB_ID = jh.JOB_ID
WHERE
    e.EMAIL = email
ORDER BY `Departamento` , `Cargo`;
END $$ 

DELIMITER ;
