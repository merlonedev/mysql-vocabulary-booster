SELECT 
    pr.ProductName AS Produto, pr.Price AS Preço
FROM
    w3schools.products pr
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.order_details od
        WHERE
            od.ProductID = pr.ProductID
                AND od.Quantity > 80)
ORDER BY Produto;
