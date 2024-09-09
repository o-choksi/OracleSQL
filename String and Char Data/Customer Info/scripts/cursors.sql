DECLARE
    CURSOR customer_cursor IS
        SELECT first_name, last_name, email FROM customers;
BEGIN
    FOR customer_rec IN customer_cursor LOOP
        DBMS_OUTPUT.PUT_LINE('Customer: ' || customer_rec.first_name || ' ' || customer_rec.last_name || ' | Email: ' || customer_rec.email);
    END LOOP;
END;
/
