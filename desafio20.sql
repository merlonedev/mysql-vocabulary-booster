DELIMITER $$

CREATE PROCEDURE 
  exibir_historico_completo_por_funcionario(IN email_input VARCHAR(30))
BEGIN
  SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    DE.DEPARTMENT_NAME AS `Departamento`,
    J.JOB_TITLE AS `Cargo`
  FROM employees E
  JOIN job_history JH ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
  JOIN departments DE ON JH.DEPARTMENT_ID = DE.DEPARTMENT_ID
  JOIN jobs J ON JH.JOB_ID = J.JOB_ID
  WHERE
    E.EMAIL = email_input
  ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
