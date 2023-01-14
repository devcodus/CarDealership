CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    car_make VARCHAR (45),
    car_model VARCHAR (45),
    car_year VARCHAR (45)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);

CREATE TABLE customer(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER NOT NULL,
    car_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson (salesperson_id),
    FOREIGN KEY(car_id) REFERENCES car (car_id),
    FOREIGN KEY(customer_id) REFERENCES customer (customer_id),
)

CREATE TABLE service(
    service_ticket SERIAL PRIMARY KEY,
    description VARCHAR(200),
    car_id INTEGER NOT NULL,
    FOREIGN KEY(car_id) REFERENCES car (car_id),
)

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(45),
    last_name VARCHAR(45),
)