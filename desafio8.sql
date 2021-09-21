SELECT customers.ContactName AS 'Nome de contato', shippers.ShipperName AS 'Empresa que fez o envio', orders.OrderDate AS 'Data do pedido'
FROM orders AS orders INNER JOIN customers AS customers ON customers.CustomerID = orders.CustomerID
INNER JOIN shippers AS shippers ON shippers.ShipperID = orders.ShipperID
WHERE shippers.ShipperName = 'Speedy Express' OR shippers.ShipperName = 'United Package'
ORDER BY customers.ContactName ASC , shippers.ShipperName ASC , orders.OrderDate ASC;