-- Create a selection in which you can find the car and model with the highest tax
SELECT cars.plate,
       cars.brand,
       cars.model,
       cars.price,
       cars.tax
FROM registered_cars AS cars
ORDER BY cars.tax DESC