SELECT
  b.productName As `Produto`,
  MIN(a.quantity) AS `Mínima`,
  MAX(a.quantity) AS `Máxima`,
  ROUND(AVG(a.quantity), 2) AS `Média`
FROM
  order_details AS a
  inner join products as b on a.productID = b.productid
GROUP BY
  a.productid
HAVING
  `Média` > 20
  ORDER BY `Média`, `Produto`;
