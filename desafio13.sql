SELECT 
    product.ProductName AS 'Produto', product.Price AS 'Preço'
FROM
    w3schools.order_details AS order_details
        JOIN
    w3schools.products AS product ON product.ProductID = order_details.ProductID
GROUP BY product.ProductID
HAVING MAX(Quantity) > 80.00
ORDER BY 1;
