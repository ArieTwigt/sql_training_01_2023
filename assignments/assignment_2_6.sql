-- Provide an overview in which you can see the, min, max, and average price of each VOLKSWAGEN GOLF (brand and model) grouped by colour

SELECT cars_vw_golf.color,
       MIN(cars_vw_golf.min_price) AS min_price,
       MAX(cars_vw_golf.max_price) AS max_price,
       ROUND(AVG(cars_vw_golf.average_price), 2) AS average_price
FROM (
    SELECT cars.brand,
       cars.model,
       cars.color,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       ROUND(AVG(cars.price), 2) 
       AS average_price
    FROM registered_cars AS cars
    WHERE cars.brand = "VOLKSWAGEN"
      AND cars.model LIKE "%GOLF%"
    GROUP BY 1,2,3
) cars_vw_golf
GROUP BY 1
ORDER BY average_price DESC