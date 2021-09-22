DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN employee_email VARCHAR(100))
BEGIN
    SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    (SELECT DEPARTMENT_NAME FROM hr.departments d WHERE d.DEPARTMENT_ID = jh.DEPARTMENT_ID) AS `Departamento`,
    (SELECT JOB_TITLE FROM hr.jobs j WHERE j.JOB_ID = jh.JOB_ID) AS `Cargo`
FROM
    hr.job_history jh
        INNER JOIN
    (SELECT 
        *
    FROM
        hr.employees
    WHERE
        EMAIL = employee_email) e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Departamento` ASC, `Cargo` ASC;
END $$

DELIMITER ;
