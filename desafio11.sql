SELECT
	CUST1.ContactName AS 'Nome',
    CUST1.Country AS 'País',
    count(CUST1.Country) AS 'Número de compatriotas'
FROM
w3schools.customers as CUST1, w3schools.customers AS CUST2
WHERE
CUST1.Country = CUST2.Country AND CUST1.CustomerID != CUST2.CustomerID
GROUP BY CUST1.Country, CUST1.ContactName
ORDER BY CUST1.ContactName;
