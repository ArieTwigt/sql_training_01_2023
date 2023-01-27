   
WITH cars_color AS ( 
   SELECT 
          cars.color,
          brands.country,
          COUNT(*) AS aantal
   FROM registered_cars AS cars
   LEFT JOIN car_brands AS brands 
     ON cars.brand = brands.brand
   WHERE brands.country = 'Italy'
   GROUP BY 1,2
   ORDER BY aantal DESC
)

/*
SELECT cars_color.country,
       cars_color.color,
       MAX(cars_color.aantal)
FROM cars_color
GROUP BY 1,2
*/