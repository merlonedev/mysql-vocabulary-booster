SELECT T1.ProductName AS 'Produto',
MIN(T2.Quantity) AS 'Mínima',
MAX(T2.Quantity) AS 'Máxima',
ROUND(AVG(T2.Quantity), 2) AS 'Média'
FROM w3schools.products AS T1
INNER JOIN w3schools.order_details AS T2
ON T1.ProductID = T2.ProductID
GROUP BY T1.ProductID
HAVING AVG(T2.Quantity) > 20
ORDER BY ROUND(AVG(T2.Quantity), 2) ASC, T1.ProductName ASC;
