SELECT p.ProductName AS 'Produto',
MIN(ordd.Quantity) AS 'Mínima',
MAX(ordd.Quantity) AS 'Máxima',
ROUND(AVG(ordd.Quantity), 2) AS 'Média'
From w3schools.products AS p
INNER JOIN w3schools.order_details AS ordd ON ordd.ProductID = p.ProductID
GROUP BY p.ProductID
HAVING AVG(ordd.Quantity) > 20
ORDER BY AVG(ordd.Quantity), p.ProductName
