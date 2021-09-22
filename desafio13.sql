SELECT 
    (SELECT 
            ProductName AS Produto
        FROM
            w3schools.products
        WHERE
            w3schools.order_details.ProductID = ProductID) AS Produto,
    (SELECT 
            Price
        FROM
            w3schools.products
        WHERE
            w3schools.order_details.ProductID = ProductID) AS Preço
FROM
    w3schools.order_details
WHERE
    Quantity > 80
ORDER BY Produto;
