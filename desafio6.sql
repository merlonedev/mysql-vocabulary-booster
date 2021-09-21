SELECT 
(SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM hr.employees WHERE hr.employees.EMPLOYEE_ID = hr.job_history.EMPLOYEE_ID) AS `Nome completo`,
(SELECT JOB_TITLE FROM hr.jobs WHERE hr.job_history.JOB_ID = hr.jobs.JOB_ID) AS Cargo,
START_DATE AS `Data de início do cargo`,
(SELECT DEPARTMENT_NAME FROM hr.departments WHERE hr.departments.DEPARTMENT_ID = hr.job_history.DEPARTMENT_ID) AS Departamento
FROM hr.job_history
ORDER BY `Nome completo` DESC, Cargo ASC;
