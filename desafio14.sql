SELECT DISTINCT
    Country AS País
FROM
    (SELECT DISTINCT
        Country
    FROM
        w3schools.customers UNION SELECT 
        Country
    FROM
        w3schools.suppliers) AS country_collection
ORDER BY País
LIMIT 5;