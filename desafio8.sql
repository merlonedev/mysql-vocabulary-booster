SELECT 
customers.ContactName AS `Nome de contato`,
shippers.ShipperName AS `Empresa que fez o envio`,
orders.OrderDate AS `Data do pedido`
FROM
w3schools.customers AS customers
INNER JOIN
w3schools.orders AS orders ON customers.CustomerID = orders.CustomerID
INNER JOIN
w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
WHERE
shippers.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY customers.ContactName , shippers.ShipperName , orders.OrderDate;
