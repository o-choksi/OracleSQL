-- Update the stock quantity for a specific part
UPDATE Computer_Parts
SET stock_quantity = stock_quantity + 50
WHERE part_id = 1;

-- Update the supplier for a part
UPDATE Computer_Parts
SET supplier_id = 5
WHERE part_id = 10;

-- Apply a discount on all parts from a particular manufacturer
UPDATE Computer_PParts
SET price = price * 0.9
WHERE manufacturer_id = 2;
