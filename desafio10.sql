SELECT
p.ProductName AS 'Produto',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM
w3schools.products AS p
INNER JOIN
  w3schools.order_details AS o ON o.ProductID = p.ProductID
GROUP BY p.ProductName
HAVING ROUND(AVG(o.Quantity), 2) > 20
ORDER BY ROUND(AVG(o.Quantity), 2), p.ProductName;
