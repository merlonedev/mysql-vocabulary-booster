(SELECT Country AS `País` FROM suppliers)
UNION
(SELECT Country AS `País` FROM customers)
ORDER BY  1
LIMIT 5;
