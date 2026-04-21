CREATE TABLE dbo.ProjectLocationAudit
(
    ProjectNo CHAR(10),
    UserName VARCHAR(50),
    ModifiedDate DATETIME,
    Location_Old VARCHAR(50),
    Location_New VARCHAR(50)
);


CREATE TRIGGER trg_AuditProjectLocation
ON Company.dbo.Project
AFTER UPDATE
AS
BEGIN
    -- Only run if PLocation column was updated
    IF UPDATE(PLocation)
    BEGIN
        INSERT INTO dbo.ProjectLocationAudit
        SELECT 
            i.ProjectNo,
            SUSER_SNAME(),  -- Gets current username
            GETDATE(),      -- Current date/time
            d.PLocation,    -- Old value (from deleted)
            i.PLocation     -- New value (from inserted)
        FROM inserted i
        JOIN deleted d 
            ON i.ProjectNo = d.ProjectNo
        WHERE d.PLocation <> i.PLocation;  -- Only if value actually changed
    END
END;
