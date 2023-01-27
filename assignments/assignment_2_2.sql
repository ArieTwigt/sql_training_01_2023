
SELECT cars_2seats.color,
       ROUND(AVG(cars_2seats.average_price), 2) AS average_price 
FROM (

    SELECT cars.brand,
           cars.model,
           cars.color,
       ROUND(AVG(cars.price), 2)
             as average_price
    FROM registered_cars AS cars
    WHERE cars.seats = 2
    GROUP BY 1,2,3
) AS cars_2seats

GROUP BY 1
ORDER BY 2 DESC