-- Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética (w3schools).
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.
-- select * from w3schools.customers;
-- select * from w3schools.suppliers;
(SELECT DISTINCT Country AS `País` FROM w3schools.customers)
UNION ALL
(SELECT DISTINCT Country AS `País` FROM w3schools.suppliers) 
ORDER BY `País` LIMIT 5;
