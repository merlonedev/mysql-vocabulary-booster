DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailInput VARCHAR(50))
BEGIN

    DECLARE empregadoID varchar(50);
    
SELECT 
    EMPLOYEE_ID
INTO empregadoID FROM
    hr.employees
WHERE
    EMAIL = emailInput;
    
SELECT 
    (SELECT 
            CONCAT(FIRST_NAME, ' ', LAST_NAME)
        FROM
            hr.employees
        WHERE
            hr.employees.EMPLOYEE_ID = empregadoID) AS 'Nome completo',
    (SELECT 
            DEPARTMENT_NAME
        FROM
            hr.departments
        WHERE
            hr.job_history.DEPARTMENT_ID = hr.departments.DEPARTMENT_ID) AS 'Departamento',
    (SELECT 
            JOB_TITLE
        FROM
            hr.jobs
        WHERE
            hr.job_history.JOB_ID = hr.jobs.JOB_ID) AS 'Cargo'
FROM
    hr.job_history
WHERE
    empregadoID = EMPLOYEE_ID
ORDER BY 2 , 3;
    
END $$

DELIMITER ;
