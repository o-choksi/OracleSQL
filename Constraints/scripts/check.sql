CREATE TABLE employees_check (
    employee_id NUMBER PRIMARY KEY,
    age NUMBER CHECK (age >= 18) -- Ensures that age is at least 18
);

-- Inserting valid data
INSERT INTO employees_check (employee_id, age) VALUES (1, 25);

-- Attempting to insert invalid data will fail