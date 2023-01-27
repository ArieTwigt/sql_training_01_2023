SELECT cars.plate,
       cars.brand,
       cars.model,
       motor.net_power_fuel,
       motor.net_power_electric
FROM registered_cars AS cars
LEFT JOIN cars_motor AS motor
ON cars.plate = motor.plate
WHERE cars.brand = 'VOLVO' 
  AND cars.model = 'XC40'
ORDER BY cars.plate