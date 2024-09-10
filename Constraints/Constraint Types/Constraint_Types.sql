SET PAGESIZE 100;
SET LINESIZE 150;

-- Query to list all constraint types and their descriptions from Oracle
SELECT CONSTRAINT_TYPE, 
       CASE 
           -- Check constraints
           WHEN CONSTRAINT_TYPE = 'C' THEN 'Check constraint on a table'
           -- Primary key constraints
           WHEN CONSTRAINT_TYPE = 'P' THEN 'Primary key constraint'
           -- Unique constraints
           WHEN CONSTRAINT_TYPE = 'U' THEN 'Unique key constraint'
           -- Referential integrity constraints (Foreign keys)
           WHEN CONSTRAINT_TYPE = 'R' THEN 'Referential integrity (foreign key)'
           -- View constraint with WITH CHECK OPTION
           WHEN CONSTRAINT_TYPE = 'V' THEN 'View constraint (WITH CHECK OPTION)'
           -- Read-only view constraint
           WHEN CONSTRAINT_TYPE = 'O' THEN 'Read-only view constraint'
           -- Hash expression constraints
           WHEN CONSTRAINT_TYPE = 'H' THEN 'Hash expression constraint'
           -- Constraint on a deferrable object
           WHEN CONSTRAINT_TYPE = 'F' THEN 'Deferrable constraint'
           -- System-generated constraint
           WHEN CONSTRAINT_TYPE = 'S' THEN 'System-generated constraint'
           -- Constraints that are not yet supported or unknown
           ELSE 'Other or unknown constraint type'
       END AS DESCRIPTION
FROM ALL_CONSTRAINTS
GROUP BY CONSTRAINT_TYPE
ORDER BY CONSTRAINT_TYPE;

EXIT;
