SELECT ProductName AS `Produto`,
MIN(Quantity) AS `Mínima`,
MAX(Quantity) AS `Máxima`,
ROUND(AVG(Quantity), 2) AS `Média`
FROM w3schools.order_details o
INNER JOIN products p ON o.ProductID = p.ProductID
GROUP BY o.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
