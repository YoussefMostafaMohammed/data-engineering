-- Create a test table first (optional, for demonstration)
CREATE TABLE TestTransaction (ID INT, Name VARCHAR(50));

BEGIN TRANSACTION;

    INSERT INTO TestTransaction VALUES (1, 'First');
    
    -- First savepoint
    SAVE TRANSACTION SavePoint1;
    
    INSERT INTO TestTransaction VALUES (2, 'Second');
    
    -- Second savepoint
    SAVE TRANSACTION SavePoint2;
    
    INSERT INTO TestTransaction VALUES (3, 'Third');
    
    -- Rollback to SavePoint2 (removes the 3rd insert)
    ROLLBACK TRANSACTION SavePoint2;
    
    -- At this point, only rows 1 and 2 exist
    -- We can continue or roll back further
    
    -- Rollback to SavePoint1 (removes the 2nd insert too)
    ROLLBACK TRANSACTION SavePoint1;
    
    -- Only row 1 remains

COMMIT TRANSACTION;

-- Result: Only row 1 is in the table
SELECT * FROM TestTransaction;
