SELECT 
    customers.ContactName AS 'Nome de contato',
    shippers.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.customers AS customers ON orders.CustomerID = customers.CustomerID
        INNER JOIN
    w3schools.shippers AS shippers ON shippers.ShipperID = orders.ShipperID
WHERE
    shippers.ShipperID IN (1 , 2)
ORDER BY customers.ContactName ASC , shippers.ShipperName ASC , orders.OrderDate ASC;
