SELECT
    job_title AS 'Cargo',
    (CASE
      WHEN MAX_SALARY > 4999 AND MAX_SALARY < 10001 THEN 'Baixo'
      WHEN
          MAX_SALARY > 10001
              AND MAX_SALARY < 20001
      THEN
          'Médio'
      WHEN
          MAX_SALARY > 20001
            AND MAX_SALARY < 30001
      THEN
          'Alto'
      WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
    END) AS 'Nível'
FROM
    hr.jobs
ORDER BY job_title ASC;
