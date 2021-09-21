USE hr;

DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario (IN employee_email VARCHAR(20))
BEGIN
SELECT CONCAT(e.first_name, ' ', e.last_name) 'Nome completo',
d.department_name 'Departamento',
j.job_title 'Cargo'
FROM employees e
    JOIN job_history jh
      ON jh.employee_id = e.employee_id
JOIN departments d
ON d.department_id = jh.department_id
JOIN jobs j
ON j.job_id = jh.job_id
WHERE e.email = employee_email
ORDER BY 2, 3;
END $$
DELIMITER ;
