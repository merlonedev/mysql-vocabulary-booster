SELECT 
    products.ProductName AS `Produto`, products.Price AS Preço
FROM
    w3schools.order_details AS details
        INNER JOIN
    w3schools.products AS products ON details.ProductID = products.ProductID
WHERE
    Quantity > 80
ORDER BY Produto ASC;
