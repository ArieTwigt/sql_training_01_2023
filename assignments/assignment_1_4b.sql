-- How many cars (combination of brand and model) have more than 7 seats?
SELECT cars.brand || " " ||cars.model AS car_model,
       cars.price,
       cars.seats
FROM registered_cars AS cars
WHERE cars.seats = 7
ORDER BY cars.price
