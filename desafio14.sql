SELECT s.Country AS País
FROM suppliers s
JOIN customers c ON c.Country = s.Country
GROUP BY s.Country
ORDER BY s.Country
LIMIT 5;
