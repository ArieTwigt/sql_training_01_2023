-- SQLite 
SELECT cars.brand || " " || cars.model AS car_model, 
       cars.price
FROM registered_cars AS cars