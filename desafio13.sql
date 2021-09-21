SELECT 
    ProductName AS 'Produto', Price AS 'Preço'
FROM
    products
WHERE
    ProductID IN (SELECT 
            ProductID
        FROM
            order_details
        WHERE
            Quantity > 80)
ORDER BY ProductName;
