select p.ProductName as Produto,
min(od.Quantity) as `Mínima`,
max(od.Quantity) as `Máxima`,
round(avg(od.Quantity), 2) as `Média`
from w3schools.products as p
inner join w3schools.order_details as od
on p.ProductID = od.ProductID
group by p.ProductName
having avg(od.Quantity) > 20.00
order by 4 asc, 1 asc;
