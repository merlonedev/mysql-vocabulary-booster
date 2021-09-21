SELECT 
    ProductName AS Produto,
    Price AS Preço
FROM
    products p
        JOIN
    order_details od ON od.ProductID = p.ProductID
WHERE
    od.Quantity > 80
    ORDER BY ProductName;
