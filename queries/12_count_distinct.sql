-- SQLite
SELECT COUNT(DISTINCT(cars.model)) AS modellen
FROM registered_cars AS cars
WHERE cars.brand = 'BMW'
ORDER BY cars.model