SELECT
p.ProductName AS Produto,
MIN(d.Quantity) AS Mínima,
MAX(d.Quantity) AS Máxima,
ROUND(AVG(d.Quantity), 2) AS Média
FROM w3schools.order_details AS d
INNER JOIN w3schools.products AS p
ON d.ProductID = p.ProductID
GROUP BY Produto
HAVING Média > 20
ORDER BY Média, Produto;
