SELECT
    (SELECT 
            ContactName
        FROM
            w3schools.customers
        WHERE
            w3schools.customers.CustomerID = w3schools.orders.CustomerID) AS 'Nome de contato',
    (SELECT 
            ShipperName
        FROM
            w3schools.shippers
        WHERE
            w3schools.shippers.ShipperID = w3schools.orders.ShipperID) AS 'Empresa que fez o envio',
    OrderDate AS 'Data do pedido'
FROM
    w3schools.orders
WHERE
    ShipperID IN (1 , 2)
ORDER BY 1 , 2;
