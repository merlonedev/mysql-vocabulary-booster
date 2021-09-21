SELECT p.productName 'Produto',
MIN(od.quantity) 'Mínima',
MAX(od.quantity) 'Máxima',
ROUND(AVG(od.quantity), 2) `Média`
FROM w3schools.products p
JOIN w3schools.order_details od
  ON od.productId = p.productId
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média`, `Produto`;
