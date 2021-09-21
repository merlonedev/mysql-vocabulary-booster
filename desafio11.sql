    SELECT 
    t1.ContactName AS 'Nome',
    t1.Country AS 'País',
	Count(t1.Country) - 1 as 'Número de compatriotas'
        FROM
            w3schools.customers AS t1,
            w3schools.customers AS t2
	where t1.Country = t2.Country
    group by t1.ContactName, t1.Country
    Having Count(t1.Country) - 1 <> 0
	Order by t1.ContactName ASC;
