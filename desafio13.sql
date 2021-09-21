SELECT 
    (SELECT 
            ProductName
        FROM
            w3schools.products
        WHERE
            w3schools.products.ProductID = w3schools.order_details.ProductID) AS 'Produto',
    (SELECT 
            Price
        FROM
            w3schools.products
        WHERE
            w3schools.products.ProductID = w3schools.order_details.ProductID) AS 'Preço'
FROM
    w3schools.order_details
GROUP BY ProductID
HAVING MAX(Quantity) > 80.00
ORDER BY 1;
