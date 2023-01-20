-- SQLite
SELECT cars.brand,
       cars.model,
        MIN(cars.price) AS min_price,
        MAX(cars.price) AS max_price,
        SUM(cars.price) AS total_price,
        ROUND(AVG(cars.price), 2) AS average_price
FROM registered_cars as cars
GROUP BY cars.brand, cars.model
ORDER BY average_price DESC