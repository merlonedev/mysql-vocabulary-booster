use hr;

DELIMITER $$;

CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN email VARCHAR(50))
BEGIN
SELECT 
    CONCAT(ep.FIRST_NAME, ' ', ep.LAST_NAME) AS `Nome completo`,
    dp.DEPARTMENT_NAME AS Departamento,
    jb.JOB_TITLE AS Cargo
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS ep ON jh.EMPLOYEE_ID = ep.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS jb ON jh.JOB_ID = jb.JOB_ID
        INNER JOIN
    hr.departments AS dp ON jh.DEPARTMENT_ID = dp.DEPARTMENT_ID
WHERE ep.EMAIL = email
ORDER BY Departamento ASC , Cargo ASC;
END &&;

DELIMITER ;
