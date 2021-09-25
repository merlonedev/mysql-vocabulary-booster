SELECT 
    ProductName 'Produto', Price 'Preço'
FROM
    w3schools.products p
        JOIN
    w3schools.order_details d ON d.ProductID = p.ProductID and d.Quantity > 80
ORDER BY 1;
