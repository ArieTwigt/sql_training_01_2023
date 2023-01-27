
SELECT cars_2seats.color,
       cars_2seats.average_price
FROM (

    SELECT cars.brand,
       cars.model,
       cars.seats,
       cars.color,
       COUNT(*) AS sales,
       ROUND(AVG(cars.price), 2)
             as average_price
    FROM registered_cars AS cars
    WHERE cars.seats = 2
    GROUP BY 1,2,3,4
    ORDER BY average_price DESC
) AS cars_2seats

GROUP BY 1
ORDER BY 2 DESC