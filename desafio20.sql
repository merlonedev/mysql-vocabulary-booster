USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN inEmail VARCHAR(300))

BEGIN
SELECT
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    dep.DEPARTMENT_NAME AS `Departamento`,
    j.JOB_TITLE AS `Cargo`
FROM `job_history` AS jh
    INNER JOIN `employees` AS emp ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
    INNER JOIN `departments` AS dep ON jh.DEPARTMENT_ID = dep.DEPARTMENT_ID
    INNER JOIN `jobs` AS j ON jh.JOB_ID = j.JOB_ID
WHERE emp.EMAIL = inEmail
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER ;
