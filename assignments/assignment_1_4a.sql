-- How many cars (combination of brand and model) have more than 7 seats?
SELECT COUNT(DISTINCT(cars.brand || " " ||cars.model)) AS cars
FROM registered_cars AS cars
WHERE cars.seats > 7
