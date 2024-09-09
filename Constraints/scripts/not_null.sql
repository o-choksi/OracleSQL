CREATE TABLE employees_not_null (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL
);

-- Inserting valid data
INSERT INTO employees_not_null (employee_id, first_name, last_name)
VALUES (1, 'John', 'Doe');

-- Attempting to insert NULL values will fail
