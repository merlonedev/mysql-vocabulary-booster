SELECT 
PROD.ProductName AS 'Produto',
MIN(OD.Quantity) AS 'Mínima',
MAX(OD.Quantity) AS 'Máxima',
AVG(OD.Quantity) AS 'Média'
FROM
w3schools.products AS PROD
JOIN
w3schools.order_details AS OD ON OD.ProductID = PROD.ProductID
GROUP BY PROD.ProductName
HAVING AVG(OD.Quantity) > 20.00
ORDER BY AVG(OD.Quantity) , PROD.ProductName;
