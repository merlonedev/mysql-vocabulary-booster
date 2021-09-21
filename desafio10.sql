SELECT pr.ProductName AS 'Produto', MIN(Quantity) AS 'Mínima', MAX(Quantity) AS 'Máxima', 
ROUND(AVG(Quantity), 2) AS 'Média'
FROM w3schools.order_details AS od
INNER JOIN w3schools.products AS pr
ON pr.ProductID = od.ProductID
GROUP BY `Produto`
HAVING ROUND(AVG(Quantity), 2) > 20
ORDER BY `Média`, `Produto`;
