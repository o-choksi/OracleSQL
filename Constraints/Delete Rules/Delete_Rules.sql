SET PAGESIZE 100;
SET LINESIZE 150;

-- Query to list all delete rules for foreign key constraints
SELECT 
    CONSTRAINT_NAME, 
    TABLE_NAME, 
    DELETE_RULE, 
    CASE 
        WHEN DELETE_RULE = 'CASCADE' THEN 'Automatically deletes child records when parent is deleted'
        WHEN DELETE_RULE = 'SET NULL' THEN 'Sets foreign key in child records to NULL when parent is deleted'
        WHEN DELETE_RULE = 'NO ACTION' THEN 'Prevents deletion of parent if child records exist'
        ELSE 'Other or unknown delete rule'
    END AS DESCRIPTION
FROM 
    ALL_CONSTRAINTS
WHERE 
    CONSTRAINT_TYPE = 'R'  -- Foreign key constraint type
ORDER BY 
    CONSTRAINT_NAME;

EXIT;
