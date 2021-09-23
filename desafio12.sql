-- 12 - Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo

SELECT 
  CONCAT(A.FIRST_NAME, ' ', A.LAST_NAME) AS `Nome completo funcionário 1`,
  A.SALARY AS 'Salário funcionário 1',
  A.PHONE_NUMBER AS 'Telefone funcionário 1',
  CONCAT(B.FIRST_NAME, ' ', B.LAST_NAME) AS `Nome completo funcionário 2`,
  B.SALARY AS 'Salário funcionário 2',
  B.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
  employees A,
  employees B
WHERE
  A.JOB_ID = B.JOB_ID
      AND A.EMPLOYEE_ID <> B.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
