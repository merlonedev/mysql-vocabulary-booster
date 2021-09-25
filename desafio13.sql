select p.ProductName as Produto,
p.Price as `Preço`
from w3schools.products as p
inner join w3schools.order_details as od
on p.ProductID = od.ProductID
where od.Quantity > 80
order by Produto asc;
