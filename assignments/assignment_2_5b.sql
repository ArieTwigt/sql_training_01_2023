-- How many cars of the type hatchback have a higher price than 40.000?

SELECT DISTINCT hatchback_cars.brand, hatchback_cars.model
FROM (

     SELECT cars.brand, 
            cars.model,
            COUNT(*) AS aantal,
            AVG(cars.price) AS average_price
     FROM registered_cars AS cars
     WHERE cars.car_type = 'hatchback'
     GROUP BY 1,2
     HAVING average_price > 40000

) AS hatchback_cars


