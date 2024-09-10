-- File: delete_rule_set_null.sql

-- Create parent table
CREATE TABLE parent_table (
    parent_id NUMBER PRIMARY KEY,
    parent_data VARCHAR2(50)
);

-- Create child table
CREATE TABLE child_table (
    child_id NUMBER PRIMARY KEY,
    parent_id NUMBER,
    child_data VARCHAR2(50),
    CONSTRAINT fk_child_parent 
    FOREIGN KEY (parent_id) 
    REFERENCES parent_table(parent_id) 
    ON DELETE SET NULL
);

-- Insert data into parent table
INSERT INTO parent_table VALUES (1, 'Parent 1');
INSERT INTO parent_table VALUES (2, 'Parent 2');

-- Insert data into child table
INSERT INTO child_table VALUES (101, 1, 'Child of Parent 1');
INSERT INTO child_table VALUES (102, 1, 'Another Child of Parent 1');
INSERT INTO child_table VALUES (103, 2, 'Child of Parent 2');

-- Deleting a parent record, related child records will have their foreign key set to NULL
DELETE FROM parent_table WHERE parent_id = 1;

-- Query to verify the delete set null behavior
SELECT * FROM child_table;

EXIT;
