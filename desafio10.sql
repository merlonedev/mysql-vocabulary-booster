SELECT 
    products.ProductName AS 'Produto',
    MIN(order_details.Quantity) AS 'Mínima',
    MAX(order_details.Quantity) AS 'Máxima',
    ROUND(AVG(order_details.Quantity), 2) AS 'Média'
FROM
    order_details AS order_details
        INNER JOIN
    products AS products ON products.ProductID = order_details.ProductID
        INNER JOIN
    orders AS orders ON orders.OrderID = order_details.OrderID
GROUP BY products.ProductName
HAVING ROUND(AVG(order_details.Quantity), 2) > 20.00
ORDER BY ROUND(AVG(order_details.Quantity), 2) ASC , products.ProductName ASC

	