DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_user VARCHAR(100))
BEGIN
    SELECT 
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS `Departamento`,
    jobs.JOB_TITLE AS `Cargo`
FROM
    employees e
        INNER JOIN
    job_history j ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
        INNER JOIN
    jobs ON jobs.JOB_ID = j.JOB_ID
        INNER JOIN
    departments d ON d.DEPARTMENT_ID = j.DEPARTMENT_ID
WHERE
    EMAIL = email_user
ORDER BY `Departamento` ASC , `Cargo` ASC;
END $$

DELIMITER ;
