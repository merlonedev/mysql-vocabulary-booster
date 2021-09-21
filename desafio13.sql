SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    w3schools.products
WHERE
    w3schools.products.ProductID IN (SELECT 
            ProductID
        FROM
            order_details
        WHERE
            Quantity > 80)
ORDER BY ProductName;
