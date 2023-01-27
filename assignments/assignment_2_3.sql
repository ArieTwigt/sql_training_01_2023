-- What car has the highes price per seat?
SELECT cars_2seats.brand,
       cars_2seats.model,
       cars_2seats.average_price / cars_2seats.seats AS price_per_seat
FROM (
    SELECT cars.brand,
       cars.model,
       cars.seats,  
       ROUND(AVG(cars.price), 2)
             as average_price
    FROM registered_cars AS cars
    GROUP BY 1,2,3
) AS cars_2seats

GROUP BY 1,2
ORDER BY 3 DESC