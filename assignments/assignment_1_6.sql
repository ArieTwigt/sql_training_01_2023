-- Create a set that only contains the classes for ”Mercedes-Benz”
SELECT cars.brand,
        SUBSTR(cars.model, 1, 1) || "-class" as model
FROM registered_cars AS cars
WHERE cars.brand = "MERCEDES-BENZ"
ORDER BY cars.model