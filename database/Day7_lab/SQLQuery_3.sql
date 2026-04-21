CREATE PROCEDURE dbo.ReplaceEmployeeInProject
    @OldEmpNo INT,
    @NewEmpNo INT,
    @ProjectNo CHAR(10)
AS
BEGIN
    -- Update the works_on table
    -- Change the old employee to the new employee for the specified project
    UPDATE Company.dbo.Works_on
    SET EmployeeID = @NewEmpNo
    WHERE EmployeeID = @OldEmpNo 
      AND ProjectNo = @ProjectNo;
    
    -- Optional: Check if update happened
    IF @@ROWCOUNT = 0
        PRINT 'No record found to update. Check employee and project numbers.';
    ELSE
        PRINT 'Employee replacement successful.';
END;
