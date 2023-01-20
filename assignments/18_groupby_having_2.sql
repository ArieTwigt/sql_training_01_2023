-- SQLite
/*

- Per combinatie:
    ✅ - Merk
    ✅ - Model
    ✅ - Kleur
    ✅ - Type (car_type)
- ✅ Aantal auto's
- ✅ Gemiddelde prijs
- Voor de merken "BMW", "AUDI", "MERCEDES-BENZ"

*/
SELECT cars.brand,
       cars.model,
       cars.color,
       cars.car_type,
       COUNT(cars.brand) AS amount,
       AVG(cars.price) AS average_price
FROM registered_cars AS cars
WHERE cars.brand IN ('BMW', 'AUDI', 'MERCEDES-BENZ')
GROUP BY 1,2,3,4
HAVING average_price BETWEEN 20000 AND 45000
ORDER BY average_price DESC
