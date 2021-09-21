SELECT 
    p.productName AS `Produto`, p.price AS `Preço`
FROM
    w3schools.products AS p
        JOIN
    w3schools.order_details AS o ON p.ProductID = o.ProductID
        AND o.quantity > 80
GROUP BY p.ProductID
ORDER BY `Produto`;
