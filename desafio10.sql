SELECT 
prds.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS prds
INNER JOIN w3schools.order_details AS od
ON prds.ProductID = od.ProductID
GROUP BY prds.ProductName
HAVING `Média` > 20.00
ORDER BY `Média` , `Produto`;
