SELECT 
p.ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM w3schools.products AS p
JOIN w3schools.order_details AS od ON od.ProductID = p.ProductID 
GROUP BY Produto
HAVING ROUND(AVG(Quantity), 2) > 20
ORDER BY Média, Produto;
