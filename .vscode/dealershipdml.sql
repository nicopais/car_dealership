
SELECT *
FROM customer, car;

INSERT INTO customer(
    customer_id,
    first_name,
    last_name
) VALUES(
    '1234',
    'Petah',
    'Malark'
)

INSERT INTO car(
    car_id,
    make,
    model,
    make_year
) VALUES(
    '5432',
    'honda',
    'civic',
    '2022'
)