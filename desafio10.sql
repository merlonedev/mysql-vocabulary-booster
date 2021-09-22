SELECT p.ProductName AS 'Produto',
sub.QMin AS 'Mínima',
sub.QMax AS 'Máxima',
sub.QAVG AS 'Média'
FROM (
SELECT ProductID AS 'PID',
MIN(Quantity) AS 'QMin',
MAX(Quantity) AS 'QMax',
ROUND((AVG(Quantity)), 2) AS 'QAVG'
FROM w3schools.order_details
GROUP BY ProductID) AS sub
INNER JOIN w3schools.products AS p
ON sub.PID = p.ProductID
WHERE sub.QAVG > 20
ORDER BY 4, 1;
