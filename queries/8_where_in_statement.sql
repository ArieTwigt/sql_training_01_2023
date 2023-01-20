-- SQLite
SELECT cars.brand, 
       cars.model, 
       cars.price,
       cars.tax
FROM registered_cars AS cars
WHERE cars.tax <= 1000 
  AND cars.brand IN ("BMW", "VOLKSWAGEN", "TOYOTA")
ORDER BY cars.price DESC