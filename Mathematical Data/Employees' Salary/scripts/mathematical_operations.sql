-- Calculate employee's yearly bonus as 10% of salary for those with salary > 50,000
SELECT first_name, last_name, salary, salary * 0.10 AS bonus
FROM employees
WHERE salary > 50000;

-- Perform mathematical operations on salaries
SELECT first_name, salary, salary * 1.05 AS new_salary -- 5% increase
FROM employees;

-- Calculate square root of salaries
SELECT first_name, salary, SQRT(salary) AS salary_sqrt
FROM employees;
