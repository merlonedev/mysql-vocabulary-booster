SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND((DATEDIFF(END_DATE, START_DATE) / 365), 2) AS `Anos trabalhados`
FROM hr.job_history AS jh
	INNER JOIN hr.employees AS emp
    ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
