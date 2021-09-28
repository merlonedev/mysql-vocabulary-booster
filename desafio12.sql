SELECT 
    concat(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo funcionário 1`,
    e.SALARY AS `Salário funcionário 1`,
    e.PHONE_NUMBER AS `Telefone funcionário 1`,
    concat(em.FIRST_NAME, ' ', em.LAST_NAME) AS `Nome completo funcionário 2`,
    em.SALARY AS `Salário funcionário 2`,
    em.PHONE_NUMBER AS `Telefone funcionário 2`
FROM
    hr.employees as e,
    hr.employees as em
where
    e.JOB_ID = em.JOB_ID
and 
    concat(e.FIRST_NAME, ' ', e.LAST_NAME) <> concat(em.FIRST_NAME, ' ', em.LAST_NAME)
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
