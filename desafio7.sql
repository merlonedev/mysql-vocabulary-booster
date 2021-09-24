SELECT
  UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
  HIRE_DATE AS 'Data de início',
  SALARY AS 'Salário'
FROM hr.employees
ORDER BY `Nome completo`, HIRE_DATE;
