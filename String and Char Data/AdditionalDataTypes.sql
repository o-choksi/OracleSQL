SET PAGESIZE 100;
SET LINESIZE 150;

-- Query to list all character and string data types in Oracle
SELECT DISTINCT DATA_TYPE
FROM ALL_TAB_COLUMNS
WHERE DATA_TYPE IN ('CHAR', 'VARCHAR2', 'NCHAR', 'NVARCHAR2', 'LONG')
ORDER BY DATA_TYPE;

-- Descriptions of the key character and string data types in Oracle
SELECT 'CHAR' AS DATA_TYPE, 'Fixed-length character data. Maximum length: 2000 bytes.' AS DESCRIPTION FROM DUAL
UNION
SELECT 'VARCHAR2', 'Variable-length character data. Maximum length: 4000 bytes.' FROM DUAL
UNION
SELECT 'NCHAR', 'Fixed-length Unicode character data. Maximum length: 2000 bytes.' FROM DUAL
UNION
SELECT 'NVARCHAR2', 'Variable-length Unicode character data. Maximum length: 4000 bytes.' FROM DUAL
UNION
SELECT 'LONG', 'Variable-length character data. Maximum length: 2GB. Deprecated for LOBs.' FROM DUAL;

EXIT;
