DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email NVARCHAR(100))
BEGIN
    SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM employees e
JOIN job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
JOIN departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
JOIN jobs j ON j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = email
ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$

DELIMITER ;
