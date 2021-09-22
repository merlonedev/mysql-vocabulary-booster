SELECT 
    P.productname AS Produto, P.price AS Preço
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS D ON D.productid = P.productid
WHERE
    D.quantity > 80
ORDER BY productname;
