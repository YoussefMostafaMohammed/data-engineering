CREATE TABLE dbo.StudentAudit
(
    ServerUserName VARCHAR(50),
    Date DATETIME,
    Note VARCHAR(200)
);


CREATE TRIGGER trg_StudentInsertAudit
ON ITI.dbo.Student
AFTER INSERT
AS
BEGIN
    INSERT INTO dbo.StudentAudit
    SELECT 
        SUSER_SNAME(),
        GETDATE(),
        SUSER_SNAME() + ' Insert New Row with ID=' + CAST(StudentID AS VARCHAR) + ' in table Student'
    FROM inserted;
END;
