
SELECT vw_golf.color,
       MIN(vw_golf.min_price) AS min_price,
       MAX(vw_golf.max_price) AS max_price,
       AVG(vw_golf.avg_price) AS avg_price
FROM (

    SELECT cars.brand,
       cars.model,
       cars.color,
       MIN(cars.price) AS min_price,
       MAX(cars.price) AS max_price,
       AVG(cars.price) AS avg_price
    FROM registered_cars AS cars
    WHERE cars.brand = "VOLKSWAGEN"
      AND cars.model LIKE "%GOLF%"
    GROUP BY 1,2,3
) AS vw_golf

GROUP BY 1
ORDER BY avg_price DESC