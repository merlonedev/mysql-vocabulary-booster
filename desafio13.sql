SELECT 
    p.ProductName AS `Produto`,
    p.Price AS `Preço`
FROM
    w3schools.order_details o
        INNER JOIN
    w3schools.products p ON p.ProductID = o.ProductID
WHERE
    quantity > 80
ORDER BY p.ProductName ASC;
