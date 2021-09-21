SELECT prod.ProductName AS 'Produto',
MIN(qnt.Quantity) AS 'Mínima',
MAX(qnt.Quantity) AS 'Máxima',
ROUND(AVG(qnt.Quantity), 2) AS 'Média'
FROM w3schools.products AS prod
INNER JOIN w3schools.order_details AS qnt
ON prod.ProductID = qnt.ProductID
GROUP BY `Produto`
HAVING AVG(qnt.Quantity) > 20
ORDER BY `Média`, `Produto`;
