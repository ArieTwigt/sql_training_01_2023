WITH brands_motor AS (SELECT cars.plate,
                             cars.brand,
                             cars.model,
                             motor.fuel_type_number,
                             motor.net_power_fuel AS power_fuel,
                             motor.net_power_electric AS power_electric
                      FROM registered_cars AS cars
                      LEFT JOIN cars_motor AS motor
                      ON cars.plate = motor.plate
) AS  brands_motor_grouped (
    SELECT brands_motor.brand,
       brands_motor.model,
       brands_motor.plate,
       SUM(brands_motor.power_fuel) AS power_fuel,
       SUM(brands_motor.power_electric) AS power_electric
    FROM brands_motor
    GROUP BY 1,2,3
    HAVING plate = 'P634RF'
)

