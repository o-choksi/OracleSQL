CREATE TABLE employees_unique (
    employee_id NUMBER PRIMARY KEY,
    email VARCHAR2(100) UNIQUE
);

-- Inserting unique emails
INSERT INTO employees_unique (employee_id, email) VALUES (1, 'john@example.com');
INSERT INTO employees_unique (employee_id, email) VALUES (2, 'jane@example.com');

-- Attempting to insert a duplicate email will fail
