-- Desafio feito com base no repositório do colega Guilherme Dias: https://github.com/tryber/sd-012-mysql-vocabulary-booster/pull/124/commits/5f1dbe467a4f3f99ba0624832fb056938bd41a8e

SELECT 
    CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo funcionário 1`,
    t1.SALARY AS `Salário funcionário 1`,
    t1.PHONE_NUMBER AS `Telefone funcionário 1`,
    CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS `Nome completo funcionário 2`,
    t2.SALARY AS `Salário funcionário 2`,
    t2.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    hr.employees AS t1
        INNER JOIN
    hr.employees AS t2 ON t1.JOB_ID = t2.JOB_ID
	AND t1.EMPLOYEE_ID <> t2.EMPLOYEE_ID
ORDER BY `Nome completo funcionário 1` ASC, `Nome completo funcionário 2` ASC;
