SELECT 
  CONCAT (first_name," ", last_name) AS "Nome completo",
  JOB_ID AS "Cargo",
  HIRE_DATE AS "Data de início do cargo",
  DEPARTMENT_ID AS "Departamento"
FROM hr.employees ORDER BY CONCAT (first_name," ", last_name), JOB_ID;
