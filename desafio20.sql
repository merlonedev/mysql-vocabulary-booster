USE hr
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN

SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    D.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
FROM
    hr.job_history AS JH
        INNER JOIN
    hr.employees AS E ON JH.employee_id = E.employee_id
        INNER JOIN
    hr.departments AS D ON JH.department_id = D.department_id
        INNER JOIN
    hr.jobs AS J ON JH.job_id = J.job_id
WHERE E.EMAIL = email
ORDER BY `Nome Completo` , J.JOB_TITLE ASC;
END $$
DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
