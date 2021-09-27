SELECT 
    products.ProductName AS 'Produto',
    MIN(orders.quantity) AS 'Mínima',
    MAX(orders.quantity) AS 'Máxima',
    ROUND(AVG(orders.quantity), 2) AS 'Média'
FROM
    w3schools.products AS products
        INNER JOIN
            w3schools.order_details AS orders 
            ON orders.ProductID = products.ProductID
GROUP BY products.ProductID
HAVING AVG(orders.Quantity) > 20
ORDER BY 
    AVG(orders.quantity), 
    products.ProductName;
