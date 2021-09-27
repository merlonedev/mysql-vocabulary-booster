SELECT p.ProductName AS 'Produto',
MIN(q.Quantity) AS 'Mínima',
MAX(q.Quantity) AS 'Máxima',
ROUND(AVG(q.Quantity), 2) AS 'Média'
FROM w3schools.products AS p
JOIN w3schools.order_details AS q ON q.ProductID = p.ProductID
GROUP BY q.ProductID
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
