SELECT 
    C.ContactName AS 'Nome de contato',
    (SELECT 
            shipperName
        FROM
            w3schools.shippers
        WHERE
            ShipperID = O.ShipperID) AS 'Empresa que fez o envio',
    O.OrderDate AS 'Data do pedido'
FROM
    w3schools.customers AS C
        INNER JOIN
    w3schools.orders AS O ON C.CustomerID = O.CustomerID
HAVING `Empresa que fez o envio` IN ('Speedy Express' , 'United Package')
ORDER BY `Nome de contato` , `Empresa que fez o envio` , `Data do pedido`;
