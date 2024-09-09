CREATE TABLE employees_primary_key (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50)
);

-- Inserting unique employee IDs
INSERT INTO employees_primary_key (employee_id, first_name, last_name)
VALUES (1, 'Alice', 'Smith');

-- Attempting to insert a duplicate primary key will fail
