SELECT 
    products.ProductName AS 'Produto', products.Price AS 'Preço'
FROM
    products AS products
        INNER JOIN
    order_details AS order_details ON products.ProductID = order_details.ProductID
WHERE
    order_details.Quantity > 80
ORDER BY ProductName ASC;
