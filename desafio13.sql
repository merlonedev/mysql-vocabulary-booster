SELECT 
    prod.ProductName AS 'Produto', prod.Price AS 'Preço'
FROM
    order_details AS order_d
        INNER JOIN
    products AS prod ON order_d.ProductID = prod.ProductID
WHERE
    order_d.Quantity > 80
ORDER BY prod.ProductName;
