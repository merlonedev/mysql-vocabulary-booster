select c2.ContactName as Nome,
c2.Country as `País`,
(select count(*) - 1
from w3schools.customers as c1
where c2.Country = c1.Country) as `Número de compatriotas`
from w3schools.customers as c2
where (select count(*) - 1
from w3schools.customers as c1
where c2.Country = c1.Country)
order by 1 asc;
