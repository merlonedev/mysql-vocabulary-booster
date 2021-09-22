USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN busca VARCHAR(30))
BEGIN
    SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS 'Departamento',
    j.JOB_TITLE AS 'Cargo'
FROM
    (SELECT 
        EMPLOYEE_ID, JOB_ID, DEPARTMENT_ID
    FROM
        hr.job_history) AS sub
        INNER JOIN
    hr.departments AS d ON d.DEPARTMENT_ID = sub.DEPARTMENT_ID
        INNER JOIN
    hr.jobs AS j ON j.JOB_ID = sub.JOB_ID
        INNER JOIN
    hr.employees AS e ON e.EMPLOYEE_ID = sub.EMPLOYEE_ID
WHERE
    e.EMAIL LIKE CONCAT('%', busca)
    ORDER BY 2, 3;
END $$

DELIMITER ;
