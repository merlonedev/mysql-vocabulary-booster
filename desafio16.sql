DELIMITER $$;

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email varchar(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs_total INT;
SELECT 
    COUNT(job_history.JOB_ID)
FROM
    hr.employees AS employees
        INNER JOIN
    hr.job_history AS job_history ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE employees.EMAIL = email
GROUP BY employees.EMAIL INTO jobs_total;
RETURN jobs_total;
END $$;

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
