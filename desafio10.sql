SELECT
pn.ProductName AS 'Produto',
MIN(od.Quantity) AS 'Mínima',
MAX(od.Quantity) AS 'Máxima',
ROUND(AVG(od.Quantity), 2) AS 'Média'
FROM w3schools.products AS pn
INNER JOIN w3schools.order_details AS od ON od.ProductID = pn.ProductID
GROUP BY pn.ProductName
HAVING ROUND(AVG(od.Quantity), 2) > 20
ORDER BY ROUND(AVG(od.Quantity), 2), pn.ProductName;
