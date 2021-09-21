SELECT 
    CS.ContactName AS 'Nome de contato',
    SH.ShipperName AS 'Empresa que fez o envio',
    ORD.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS CS
        INNER JOIN
    w3schools.orders AS ORD ON ORD.CustomerID = CS.CustomerID
        INNER JOIN
    w3schools.shippers AS SH ON ORD.ShipperID = SH.ShipperID
WHERE
    SH.ShipperName IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
