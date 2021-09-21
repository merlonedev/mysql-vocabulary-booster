SELECT 
    JOB_TITLE 'Cargo',
CASE
    WHEN hrj.MAX_SALARY >=  5000 and hrj.MAX_SALARY <=10000 THEN 'Baixo'
    WHEN hrj.MAX_SALARY >=  10001 and hrj.MAX_SALARY <= 20000 THEN 'Médio' 
    WHEN hrj.MAX_SALARY >=  20001 and hrj.MAX_SALARY <= 30000 THEN 'Alto' 
    WHEN hrj.MAX_SALARY >  30000 THEN 'Altíssimo'  
END 'Nível'
FROM
    hr.jobs hrj;