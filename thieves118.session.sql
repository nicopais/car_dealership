
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_type VARCHAR,
    amount INTEGER,
    car_id INTEGER,
    mechanic_id INTEGER,
    customer_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR,
    model VARCHAR,
    make_year INTEGER
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    service_cost VARCHAR,
    car_id INTEGER,
    customer_id INTEGER,
    salesperson_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (salesperson_id) REFERENCES salesteam(salesperson_id)
);

CREATE TABLE salesteam(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE dealership(
    dealership_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    mechanic_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesteam(salesperson_id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id)
);

CREATE TABLE mechanics(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

