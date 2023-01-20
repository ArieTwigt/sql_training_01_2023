-- Create a dataset that contains all types and variations of the TOYOTA COROLLA
SELECT cars.brand,
       cars.model
FROM registered_cars AS cars
WHERE cars.brand = "TOYOTA" 
  AND cars.model LIKE "%COROLLA%"