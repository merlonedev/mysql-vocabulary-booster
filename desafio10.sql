SELECT 
PROD.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM
w3schools.products AS PROD
JOIN
w3schools.order_details AS OD ON OD.ProductID = PROD.ProductID
GROUP BY PROD.ProductName
HAVING ROUND(AVG(OD.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(OD.Quantity), 2) , PROD.ProductName;
