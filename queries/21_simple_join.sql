SELECT brands.country,
       COUNT(*) AS aantal    
FROM registered_cars AS cars
LEFT JOIN car_brands AS brands
  ON cars.brand = brands.brand
GROUP BY 1
ORDER BY 2 DESC