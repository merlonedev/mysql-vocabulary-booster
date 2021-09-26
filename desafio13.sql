SELECT 
    ProductName AS 'Produto',
    Price As 'Preço'
FROM
    products AS `p`
        JOIN
    w3schools.order_details d ON d.ProductID = p.ProductID and d.Quantity > 80
ORDER BY 1;
