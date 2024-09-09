INSERT INTO customers (customer_id, first_name, last_name, email)
VALUES (1, 'John', 'Doe', 'john.doe@example.com'),
       (2, 'Jane', 'Smith', 'jane.smith@example.com'),
       (3, 'Alice', 'Johnson', 'alice.j@example.com');

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (101, 1, TO_DATE('2024-01-15', 'YYYY-MM-DD')),
       (102, 2, TO_DATE('2024-02-20', 'YYYY-MM-DD')),
       (103, 3, TO_DATE('2024-03-25', 'YYYY-MM-DD'));
