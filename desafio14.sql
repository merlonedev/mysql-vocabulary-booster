-- https://www.w3schools.com/sql/sql_union.asp
SELECT Country AS 'País' FROM w3schools.customers
UNION
SELECT Country FROM w3schools.suppliers
ORDER BY País ASC
LIMIT 5;
