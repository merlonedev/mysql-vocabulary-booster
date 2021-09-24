DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailInput VARCHAR(50))
BEGIN
SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
(
SELECT d.DEPARTMENT_NAME FROM departments AS d WHERE jh.DEPARTMENT_ID = d.DEPARTMENT_ID
) AS `Departamento`,
(
SELECT JOB_TITLE FROM jobs AS j WHERE jh.JOB_ID = j.JOB_ID
) AS `Cargo`
FROM job_history AS jh
INNER JOIN employees AS e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL LIKE CONCAT('%', emailInput, '%')
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
