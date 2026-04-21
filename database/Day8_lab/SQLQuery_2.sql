CREATE TRIGGER trg_NoMarchHires
ON Company.dbo.Employee
INSTEAD OF INSERT
AS
BEGIN
    -- Check if current month is March (3)
    IF MONTH(GETDATE()) = 3
    BEGIN
        RAISERROR('Cannot insert employees in March!', 16, 1);
        RETURN;
    END
    
    -- If not March, allow the insert
    INSERT INTO Company.dbo.Employee
    SELECT * FROM inserted;
END;
