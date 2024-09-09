-- Concatenate first and last names
SELECT first_name || ' ' || last_name AS full_name
FROM customers;

-- Convert email to uppercase
SELECT UPPER(email) AS uppercase_email
FROM customers;

-- Find length of the last name (CHAR type)
SELECT LENGTH(last_name) AS last_name_length
FROM customers;

-- Pad first name to 20 characters
SELECT RPAD(first_name, 20, '*') AS padded_name
FROM customers;
