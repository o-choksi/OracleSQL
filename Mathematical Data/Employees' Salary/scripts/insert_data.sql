INSERT INTO departments (dept_id, dept_name)
VALUES (1, 'Finance'), (2, 'HR'), (3, 'IT');

INSERT INTO employees (emp_id, first_name, last_name, salary, hire_date, dept_id)
VALUES (101, 'John', 'Doe', 50000, TO_DATE('2020-05-01', 'YYYY-MM-DD'), 1),
       (102, 'Jane', 'Smith', 60000, TO_DATE('2019-03-15', 'YYYY-MM-DD'), 2),
       (103, 'Bob', 'Johnson', 45000, TO_DATE('2021-10-21', 'YYYY-MM-DD'), 3);
