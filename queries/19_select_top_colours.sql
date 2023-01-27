
SELECT premium_german_cars.color,
       ROUND(AVG(premium_german_cars.average_price), 2) AS average_price
FROM (

    SELECT cars.brand,
       cars.model,
       cars.color,
       ROUND(AVG(cars.price), 2) AS average_price
    FROM registered_cars AS cars
    WHERE cars.price BETWEEN 30000 AND 100000
    GROUP BY 1,2,3
    HAVING cars.brand IN ('BMW', 'AUDI', 'MERCEDES-BENZ')
) AS premium_german_cars

GROUP BY 1
ORDER BY average_price DESC