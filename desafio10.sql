SELECT
    (SELECT 
            ProductName
        FROM
            w3schools.products
        WHERE
            w3schools.products.ProductID = w3schools.order_details.ProductID) AS 'Produto',
    MIN(Quantity) AS 'Mínima',
    MAX(Quantity) AS 'Máxima',
    ROUND(AVG(Quantity), 2) AS 'Média'
FROM
    w3schools.order_details
GROUP BY ProductID
HAVING AVG(Quantity) > 20.00
ORDER BY 4,1;
