-- Total revenue for all parts
SELECT SUM(revenue) AS total_revenue
FROM Part_Statistics;

-- Average units sold for each part
SELECT part_id, AVG(units_sold) AS avg_units_sold
FROM Part_Statistics
GROUP BY part_id;

-- Maximum and minimum prices of parts
SELECT MAX(price) AS max_price, MIN(price) AS min_price
FROM Computer_Parts;

-- Total number of parts in stock
SELECT COUNT(part_id) AS total_parts, SUM(stock_quantity) AS total_stock
FROM Computer_Parts;
