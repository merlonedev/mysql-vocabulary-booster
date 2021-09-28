SELECT
  pr.productName AS `Produto`,
  pr.price AS `Preço`
FROM
  order_details AS od
  INNER JOIN products AS pr ON od.ProductId = pr.ProductID
WHERE
  od.Quantity > 80
GROUP BY
  od.Quantity, pr.Price
ORDER BY
  pr.productName;
