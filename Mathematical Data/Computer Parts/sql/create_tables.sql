-- Table: Manufacturers
CREATE TABLE Manufacturers (
    manufacturer_id PLSINTEGER PRIMARY KEY,
    manufacturer_name VARCHAR(100) NOT NULL
);

-- Table: Suppliers
CREATE TABLE Suppliers (
    supplier_id PLSINTEGER PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15)
);

-- Table: Computer_Parts
CREATE TABLE Computer_Parts (
    part_id PLSINTEGER PRIMARY KEY,
    part_name VARCHAR(100) NOT NULL,
    manufacturer_id PLSINTEGER,
    supplier_id PLSINTEGER,
    price DECIMAL(10, 2),
    stock_quantity INTEGER,
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturers(manufacturer_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Table: Part_Statistics
CREATE TABLE Part_Statistics (
    statistic_id PLSINTEGER PRIMARY KEY,
    part_id PLSINTEGER,
    month VARCHAR(20),
    units_sold INTEGER,
    revenue DECIMAL(10, 2),
    FOREIGN KEY (part_id) REFERENCES Computer_Parts(part_id)
);
