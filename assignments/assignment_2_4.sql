-- How many cars have higher price than 1.000.000?
SELECT COUNT(*) AS aantal
FROM (
    SELECT cars.brand, 
       cars.model,
       AVG(cars.price) as average_price
    FROM registered_cars AS cars
    GROUP BY 1,2
    HAVING average_price > 1000000
)