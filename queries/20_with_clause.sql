WITH cars_tax AS (
    SELECT cars.car_type,
       cars.price,
       cars.tax,
       (cars.tax / cars.price) * 100 AS tax_pct
    FROM registered_cars as cars
)

SELECT  cars_tax.car_type,
        ROUND(AVG(cars_tax.tax_pct), 1) as avg_tax_pct
FROM cars_tax
GROUP BY 1
ORDER BY 2 DESC
