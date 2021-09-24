select c.ContactName as `Nome de contato`,
s.ShipperName as `Empresa que fez o envio`,
o.OrderDate as `Data do pedido`
from w3schools.customers as c
inner join w3schools.orders as o
on c.CustomerID = o.CustomerID
inner join w3schools.shippers as s
on o.ShipperID = s.ShipperID
where s.ShipperName = 'Speedy Express' or s.ShipperName = 'United Package'
order by 1, 2;
