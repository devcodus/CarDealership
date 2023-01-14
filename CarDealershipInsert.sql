INSERT INTO car(
    car_id,
    car_make,
    car_model,
    car_year,
)VALUES(
    1,
    'Honda',
    'Civic',
    '1998'
),(
    2,
    'Tesla',
    'Cybertruck',
    '2024'
)

INSERT INTO customer(
    customer_id,
    first_name,
    last_name
)VALUES(
    1,
    'David',
    'Rincon'
),(
    'Eric',
    'Rincon'
)

INSERT INTO salesperson(
    salesperson_id,
    first_name,
    last_name
)VALUES(
    1,
    'Omar',
    'Vides'
),(
    2,
    'Roy',
    'Corral'
)

INSERT INTO invoice(
    invoice_id,
    salesperson_id,
    car_id,
    customer_id
)VALUES(
    1,
    1,
    1,
    1
),(
    2,
    2,
    2,
    2
)

INSERT INTO service(
    service_ticket,
    description,
    car_id
)VALUES(
    1,
    'Rotated the tires.'
    2
),(
    2,
    'Changed the oil and oil filter.',
    1
)

INSERT INTO mechanic(
    mechanic_id,
    first_name,
    last_name
)VALUES(
    1,
    "Robert",
    'Remington'
),(
    2,
    'Jason',
    'Shintos'
)

INSERT INTO service_mechanic(
    service_mechanic_id,
    mechanic_id,
    service_ticket
)VALUES(
    1,
    1,
    2
),(
    2,
    2,
    1
)

CREATE OR REPLACE FUNCTION add_car(
    _car_id INTEGER,
    _car_make VARCHAR,
    _car_model VARCHAR,
    _car_year VARCHAR)
RETURNS void
AS $MAIN$
BEGIN
    INSERT INTO car( car_id, car_make, car_model, car_year)
    VALUES(_car_id, _car_make, _car_model, _car_year)
END;
$MAIN$
LANGUAGE plpgsql

SELECT add_car(3, 'Tesla', 'Roadster', '2023')
SELECT add_car(4, 'Tesla', 'Moon Rover', '2025')

-- watch the stored function section of class