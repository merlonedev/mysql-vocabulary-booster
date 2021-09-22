SELECT 
    C.contactname AS 'Nome de contato',
    SH.shippername AS 'Empresa que fez o envio',
    O.orderdate AS 'Data do pedido'
FROM
    w3schools.customers AS C
        INNER JOIN
    w3schools.orders AS O ON C.customerid = O.customerid
        INNER JOIN
    w3schools.shippers AS SH ON SH.shipperid = O.shipperid
WHERE
    O.shipperid = 1 OR O.shipperid = 2
ORDER BY `Nome de contato` , SH.shippername , O.orderdate;
