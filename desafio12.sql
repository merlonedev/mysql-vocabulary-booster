SELECT 
  CONCAT(f1.FIRST_NAME, ' ', f1.LAST_NAME) 'Nome completo funcionário 1', 
  f1.SALARY 'Salário funcionário 1', 
  f1.PHONE_NUMBER 'Telefone funcionário 1', 
  CONCAT(f2.FIRST_NAME, ' ', f2.LAST_NAME) 'Nome completo funcionário 2', 
  f2.SALARY 'Salário funcionário 2', 
  f2.PHONE_NUMBER 'Telefone funcionário 2' 
FROM 
  hr.employees f1, 
  hr.employees f2 
WHERE 
  f1.JOB_ID = f2.JOB_ID 
  AND f1.EMPLOYEE_ID <> f2.EMPLOYEE_ID 
ORDER BY 
  `Nome completo funcionário 1`, 
  `Nome completo funcionário 2`;
