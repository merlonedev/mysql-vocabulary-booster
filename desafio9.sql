--  "Nome completo" 
-- "Total de pedidos"

SELECT 
    CONCAT(e.firstName, ' ', e.lastName) AS `Nome completo`,
    COUNT(*) AS `Total de pedidos`
FROM
    employees AS e
        INNER JOIN
    orders AS o ON e.employeeid = o.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
