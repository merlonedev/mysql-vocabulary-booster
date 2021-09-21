SELECT p.ProductName AS 'Produto',
MIN(d.Quantity) AS 'Mínima',
MAX(d.Quantity) AS 'Máxima',
ROUND(AVG(d.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS d
INNER JOIN w3schools.products AS p
ON p.ProductID = d.ProductID
GROUP BY d.ProductID HAVING ROUND(AVG(d.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(d.Quantity), 2), p.ProductName;
