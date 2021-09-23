DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_employee VARCHAR(100))
BEGIN
SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) 'Nome completo',
    d.DEPARTMENT_NAME 'Departamento',
    j.JOB_TITLE 'Cargo'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
        INNER JOIN
    hr.departments d ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
        INNER JOIN
    hr.jobs j ON j.JOB_ID = jh.JOB_ID
WHERE e.EMAIL = email_employee
ORDER BY Departamento , Cargo;
END $$

DELIMITER ;
