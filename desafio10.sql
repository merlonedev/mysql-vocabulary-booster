SELECT
products.ProductName AS 'Produto',
MIN(order_details.Quantity) AS 'Mínima',
MAX(order_details.Quantity) AS 'Máxima',
ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM w3schools.order_details AS order_details
JOIN w3schools.orders AS orders
ON orders.OrderID = order_details.OrderID
JOIN w3schools.products AS products
ON products.ProductID = order_details.ProductID
GROUP BY order_details.ProductID
HAVING Média > 20
ORDER BY Média ASC, Produto ASC;
