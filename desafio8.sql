SELECT
	wc.ContactName AS `Nome de contato`,
    ws.ShipperName AS `Empresa que fez o envio`,
    wo.OrderDate AS `Data do pedodo`
FROM 
	w3schools.customers as wc
		INNER JOIN 
	w3schools.orders AS wo ON wo.CustomerID = wc.CustomerID
		INNER JOIN 
	w3schools.shippers AS ws ON ws.ShipperID = wo.ShipperID
WHERE
	ws.ShipperName = 'Speedy Express'
		OR ws.ShipperName = 'United Package'