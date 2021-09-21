SELECT 
	CU.ContactName AS `Nome de contato`,
    S.ShipperName AS `Empresa que fez o envio`,
    O.OrderDate AS `Data do pedido`
FROM
	customers AS CU
JOIN 
	orders as O
ON
	 O.CustomerID = CU.CustomerID 
JOIN
	shippers as S
ON
	O.ShipperID = S.ShipperID
WHERE
	S.ShipperName IN ('Speedy Express','United Package')
ORDER BY CU.ContactName, S.ShipperName;
