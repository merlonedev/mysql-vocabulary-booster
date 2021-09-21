SELECT 
    p.productName AS `Produto`, p.price AS `Preço`
FROM
    w3schools.products AS p
WHERE
    p.productId IN (SELECT 
            o.productId
        FROM
            w3schools.order_details AS o
        WHERE
            o.quantity > 80)
ORDER BY `Produto`;
