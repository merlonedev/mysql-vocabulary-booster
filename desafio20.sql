DELIMITER $$

CREATE PROCEDURE
exibir_historico_completo_por_funcionario(email varchar(30))
BEGIN
SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    d.DEPARTMENT_NAME AS Departamento,
    j.JOB_TITLE AS Cargo
FROM
    employees AS emp
        JOIN
    job_history AS jh ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
        JOIN
    departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
        JOIN
    jobs AS j ON j.JOB_ID = jh.JOB_ID
WHERE
    emp.EMAIL = email
ORDER BY Cargo;
END

$$

DELIMITER ;
