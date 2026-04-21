CREATE TRIGGER trg_StudentDeleteAudit
ON ITI.dbo.Student
INSTEAD OF DELETE
AS
BEGIN
    INSERT INTO dbo.StudentAudit
    SELECT 
        SUSER_SNAME(),
        GETDATE(),
        SUSER_SNAME() + ' try to delete Row with ID=' + CAST(StudentID AS VARCHAR)
    FROM deleted;  -- deleted table holds the rows that were trying to be deleted
    
    PRINT 'Delete operation has been logged and prevented.';
END;
