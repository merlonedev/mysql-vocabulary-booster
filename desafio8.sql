SELECT 
    customer.ContactName AS 'Nome de contato',
    shipper.ShipperName AS 'Empresa que fez o envio',
    orders.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS customer
        INNER JOIN
            w3schools.orders AS orders 
            ON orders.CustomerID = customer.CustomerID
        INNER JOIN
            w3schools.shippers AS shipper 
            ON shipper.ShipperID = orders.ShipperID
WHERE
    shipper.ShipperName = 'Speedy Express' OR shipper.ShipperName = 'United Package'
ORDER BY 
    customer.ContactName, 
    shipper.ShipperName, 
    orders.OrderDate;
