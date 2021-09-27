SELECT
p.ProductName AS Produto,
MIN(Quantity) AS Mínima,
MAX(Quantity) AS Máxima,
ROUND(AVG(Quantity), 2) AS Média
FROM
w3schools.order_details AS o
JOIN
w3schools.products AS p ON p.ProductID = o.ProductID
GROUP BY o.ProductID
HAVING Média > 20.00
ORDER BY Média, Produto;
