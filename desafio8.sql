SELECT 
    customer.ContactName AS 'Nome de contato',
    shipper.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS orders
        INNER JOIN
    w3schools.customers AS customer ON customer.CustomerID = orders.CustomerID
        INNER JOIN
    w3schools.shippers AS shipper ON shipper.ShipperID = orders.ShipperID
WHERE
    shipper.ShipperID < 3
ORDER BY 1 , 2 , 3;
