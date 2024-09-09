CREATE TABLE employees_default (
    employee_id NUMBER PRIMARY KEY,
    status VARCHAR2(20) DEFAULT 'active'
);

-- Inserting without specifying the status will automatically set it to 'active'
INSERT INTO employees_default (employee_id) VALUES (1);

-- Inserting with a specified status
INSERT INTO employees_default (employee_id, status) VALUES (2, 'inactive');
