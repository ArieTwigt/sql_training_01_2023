-- Average tax per country

WITH cars_tax AS (
    SELECT 
       brands.country,
       (cars.tax / cars.price) * 100 
       AS tax_percentage
    FROM registered_cars AS cars
    LEFT JOIN car_brands AS brands
    ON cars.brand = brands.brand
)

SELECT 
        cars_tax.country,
        AVG(cars_tax.tax_percentage) AS avg_tax_pct
FROM cars_tax
GROUP BY 1
ORDER BY 2 DESC