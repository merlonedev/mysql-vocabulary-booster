SELECT 
    pdt.ProductName AS Produto, pdt.Price AS Preço
FROM
    w3schools.products AS pdt
        INNER JOIN
    w3schools.order_details AS dtls ON dtls.ProductID = pdt.ProductID
WHERE
    dtls.Quantity > 80
ORDER BY ProductName;
