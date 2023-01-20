-- SQLite

SELECT 
       cars_amount_grouped.model,
       cars_amount_grouped.brand,
       cars_amount_grouped.average_price *
       cars_amount_grouped.amount AS turnover
FROM (

    SELECT cars.brand,
           cars.model,
           AVG(cars.price) AS average_price,
           COUNT(cars.brand) AS amount
    FROM registered_cars AS cars
    WHERE cars.brand != "VOLKSWAGEN"
    GROUP BY cars.brand, cars.model
    HAVING amount > 10000
    ORDER BY amount DESC

) AS cars_amount_grouped
ORDER BY turnover DESC

