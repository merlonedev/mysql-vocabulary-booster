USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(30))
BEGIN
    SELECT 
        CONCAT(E.first_name, ' ', E.last_name) AS 'Nome completo',
        D.department_name AS Departamento,
        J.job_title AS Cargo
    FROM
        hr.employees AS E
    INNER JOIN hr.job_history AS H
    ON H.employee_id = E.employee_id

    INNER JOIN hr.departments AS D
    ON D.department_id = H.department_id

    INNER JOIN hr.jobs AS J
    ON J.job_id = H.job_id

    WHERE E.email = email

    ORDER BY Departamento, Cargo;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');