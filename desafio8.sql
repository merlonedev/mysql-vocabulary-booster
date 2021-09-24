SELECT 
    cust.ContactName AS 'Nome de contato',
    ship.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    orders
        INNER JOIN
    customers AS cust ON cust.CustomerID = orders.CustomerID
        INNER JOIN
    shippers AS ship ON orders.ShipperID = ship.ShipperID
WHERE
    orders.ShipperID IN (1 , 2)
ORDER BY cust.ContactName ASC , ship.ShipperName ASC , orders.OrderDate ASC;
