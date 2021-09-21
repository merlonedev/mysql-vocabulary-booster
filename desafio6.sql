SELECT 
CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome completo`,
(SELECT JOB_TITLE FROM hr.jobs WHERE hr.employees.JOB_ID = hr.jobs.JOB_ID) AS Cargo,
HIRE_DATE AS `Data de início do cargo`,
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = hr.employees.DEPARTMENT_ID) AS Departamento
FROM hr.employees
ORDER BY `Nome completo` DESC, Cargo ASC;
