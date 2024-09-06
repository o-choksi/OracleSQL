-- Insert sample records into Manufacturers
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Manufacturers (manufacturer_id, manufacturer_name)
        VALUES (i, 'Manufacturer ' || i);
    END LOOP;
END;
/

-- Insert sample records into Suppliers
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Suppliers (supplier_id, supplier_name, contact_number)
        VALUES (i, 'Supplier ' || i, '123-456-789' || TO_CHAR(i));
    END LOOP;
END;
/

-- Insert sample records into Computer_Parts
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Computer_Parts (part_id, part_name, manufacturer_id, supplier_id, price, stock_quantity)
        VALUES (i, 'Part ' || i, MOD(i, 50) + 1, MOD(i, 50) + 1, ROUND(DBMS_RANDOM.VALUE(10, 1000), 2), TRUNC(DBMS_RANDOM.VALUE(1, 100)));
    END LOOP;
END;
/

-- Insert sample records into Part_Statistics
BEGIN
    FOR i IN 1..50 LOOP
        INSERT INTO Part_Statistics (statistic_id, part_id, month, units_sold, revenue)
        VALUES (i, i, 'Month ' || MOD(i, 12) + 1, TRUNC(DBMS_RANDOM.VALUE(1, 500)), ROUND(DBMS_RANDOM.VALUE(1000, 10000), 2));
    END LOOP;
END;
/
