DELIMITER $$

DROP PROCEDURE IF EXISTS exibir_historico_completo_por_funcionario;

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_funcionario VARCHAR(50))

BEGIN

    SELECT 
        CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
        d.DEPARTMENT_NAME AS `Departamento`,
        j.JOB_TITLE AS `Cargo`
    FROM
        hr.job_history AS jh
            JOIN
        hr.jobs AS j ON jh.JOB_ID = j.JOB_ID
            JOIN
        hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
            JOIN
        hr.departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
    WHERE
        e.EMAIL = email_funcionario
    ORDER BY `Departamento`, `Cargo`;

END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
