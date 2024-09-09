CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE employees_foreign_key (
    employee_id NUMBER PRIMARY KEY,
    dept_id NUMBER,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

-- Insert into departments
INSERT INTO departments (dept_id, dept_name) VALUES (1, 'HR');
INSERT INTO departments (dept_id, dept_name) VALUES (2, 'IT');

-- Insert into employees
INSERT INTO employees_foreign_key (employee_id, dept_id) VALUES (1, 1);

-- Deleting a department will automatically delete its associated employees
DELETE FROM departments WHERE dept_id = 1; -- This will delete employee with employee_id = 1
