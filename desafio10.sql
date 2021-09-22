SELECT
	  p.ProductName AS `Produto`,
  MIN(od.Quantity) AS `Mínima`,
  MAX(od.Quantity) AS `Máxima`,
  ROUND(AVG(od.Quantity), 2) AS `Média`
FROM
	w3schools.order_details od
INNER JOIN
  w3schools.products p ON od.ProductID = p.ProductID
GROUP BY od.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
