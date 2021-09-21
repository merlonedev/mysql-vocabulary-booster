    SELECT 
    DISTINCT
    c.ContactName AS 'Nome de contato',
    sh.ShipperName AS 'Empresa que fez o envio',
    o.OrderDate AS 'Data do pedido'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.order_details AS od ON od.OrderID = o.OrderID
		INNER JOIN
	w3schools.customers AS c ON o.CustomerID = c.CustomerID
		INNER JOIN
	w3schools.shippers AS sh ON sh.ShipperID = o.ShipperID
        INNER JOIN
    w3schools.products AS p ON p.ProductID = od.ProductID
WHERE
    sh.ShipperName in ('Speedy Express', 'United Package')
ORDER BY c.ContactName ASC , sh.ShipperName ASC, o.OrderDate ASC;
