SELECT
    ContactName AS 'Nome de contato',
    SHI.ShipperName AS 'Empresa que fez o envio',
    ORD.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS CUS
        INNER JOIN
    w3schools.orders AS ORD ON ORD.CustomerID = CUS.CustomerID
        INNER JOIN
    w3schools.shippers AS SHI ON SHI.ShipperID = ORD.ShipperID
WHERE
    ORD.ShipperID = 1 OR ORD.ShipperID = 2
ORDER BY ContactName, SHI.ShipperName, ORD.OrderDate;
