SELECT
	c.ContactName AS 'Nome',
    c.Country AS 'País',
    (
		SELECT COUNT(Country)
        FROM w3schools.customers
        GROUP BY Country
        HAVING Country = c.Country
    ) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c
WHERE (
		SELECT COUNT(Country)
        FROM w3schools.customers
        GROUP BY Country
        HAVING Country = c.Country
    ) - 1 > 0
ORDER BY Nome;
