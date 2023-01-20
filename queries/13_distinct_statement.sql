-- SQLite
SELECT DISTINCT cars.brand, cars.model
FROM registered_cars AS cars
WHERE cars.brand = "TOYOTA"
ORDER BY cars.brand 
