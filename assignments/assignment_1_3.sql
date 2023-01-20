-- How many cars have between more than 2 and 5 or less seats?
SELECT cars.brand,
       cars.model,
       cars.seats
FROM registered_cars AS cars
WHERE cars.seats BETWEEN 2 AND 5
ORDER BY cars.seats