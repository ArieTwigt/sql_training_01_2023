-- How many distinct car types (car_type) does the data set contain?
SELECT COUNT(DISTINCT(cars.car_type))
FROM registered_cars as cars