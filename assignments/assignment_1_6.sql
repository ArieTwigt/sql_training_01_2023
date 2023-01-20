-- Create a set that only contains the classes for ”Mercedes-Benz”
SELECT cars.brand,
       SUBSTR(cars.model, 1, 1) || "-class"
FROM registered_cars AS cars
WHERE cars.brand = "MERCEDES-BENZ"