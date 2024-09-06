-- View to show parts, manufacturers, and suppliers
CREATE VIEW Part_Details AS
SELECT
    p.part_id,
    p.part_name,
    m.manufacturer_name,
    s.supplier_name,
    p.price,
    p.stock_quantity
FROM
    Computer_Parts p
JOIN Manufacturers m ON p.manufacturer_id = m.manufacturer_id
JOIN Suppliers s ON p.supplier_id = s.supplier_id;

-- View for part statistics with related part information
CREATE VIEW Part_Statistics_View AS
SELECT
    p.part_name,
    ps.month,
    ps.units_sold,
    ps.revenue,
    ROUND(ps.revenue / ps.units_sold, 2) AS average_price_per_unit
FROM
    Computer_Parts p
JOIN Part_Statistics ps ON p.part_id = ps.part_id;
