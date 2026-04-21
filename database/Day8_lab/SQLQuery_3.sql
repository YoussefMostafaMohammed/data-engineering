CREATE TRIGGER trg_NoDeptInsert
ON ITI.dbo.Department
INSTEAD OF INSERT
AS
BEGIN
    PRINT 'You can''t insert a new record in that table';
    -- Do nothing else = prevent the insert
END;
