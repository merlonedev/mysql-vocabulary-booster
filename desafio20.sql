DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN

    SELECT
        CONCAT(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo`,
        dp.DEPARTMENT_NAME AS `Departamento`,
        j.JOB_TITLE AS `Cargo`
    FROM
        job_history AS `jh`
    INNER JOIN employees AS `em`
    ON jh.EMPLOYEE_ID = em.EMPLOYEE_ID
    INNER JOIN jobs AS `j`
    ON jh.JOB_ID = j.JOB_ID
    INNER JOIN departments AS `dp`
    ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
    WHERE em.EMAIL = email
    ORDER BY `Departamento`, `Cargo`;

END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
