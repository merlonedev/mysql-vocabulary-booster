SELECT UCASE(CONCAT(E.FIRST_NAME,' ',E.LAST_NAME)) AS 'Nome completo',
JH.START_DATE AS 'Data de início',
E.SALARY AS Salário
FROM employees AS E
INNER JOIN hr.job_history AS JH
ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
WHERE JH.START_DATE LIKE '%01___' OR JH.START_DATE LIKE '%02___' OR JH.START_DATE LIKE '%03___'
ORDER BY `Nome completo`, JH.START_DATE ;

