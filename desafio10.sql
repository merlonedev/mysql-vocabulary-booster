SELECT
p.ProductName AS Produto,
MIN(od.Quantity) AS Mínima,
MAX(od.Quantity) AS Máxima,
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM products AS p
INNER JOIN order_details AS od
ON od.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING Média > 20
ORDER BY Média, Produto;
