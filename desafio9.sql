select distinct concat(e.FirstName, ' ', e.LastName) as `Nome completo`,
count(o.EmployeeID) as `Total de pedidos`
from w3schools.employees as e
inner join w3schools.orders as o
on e.EmployeeID = o.EmployeeID
group by 1
order by 2 ASC;
