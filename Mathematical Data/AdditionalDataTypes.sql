SET PAGESIZE 100;
SET LINESIZE 150;

-- Query to list all mathematical data types in Oracle
SELECT DATA_TYPE
FROM ALL_TAB_COLUMNS
WHERE OWNER = 'SYS'
AND TABLE_NAME = 'ALL_TYPES'
AND DATA_TYPE IN ('NUMBER', 'FLOAT', 'BINARY_FLOAT', 'BINARY_DOUBLE')
GROUP BY DATA_TYPE
ORDER BY DATA_TYPE;

-- Descriptions of the key mathematical data types in Oracle
SELECT 'NUMBER' AS DATA_TYPE, 'Stores fixed and floating point numbers. Supports precision and scale.' AS DESCRIPTION FROM DUAL
UNION
SELECT 'FLOAT', 'An ANSI-supported floating-point number. Precision defined by user.' FROM DUAL
UNION
SELECT 'BINARY_FLOAT', '32-bit single precision IEEE 754 floating-point number.' FROM DUAL
UNION
SELECT 'BINARY_DOUBLE', '64-bit double precision IEEE 754 floating-point number.' FROM DUAL;

EXIT;
