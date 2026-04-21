CREATE PROCEDURE dbo.CheckProjectP1Employees
AS
BEGIN
    DECLARE @EmployeeCount INT;
    
    -- Count employees in project P1
    SELECT @EmployeeCount = COUNT(*)
    FROM Company.dbo.Works_on
    WHERE ProjectNo = 'P1';
    
    -- Check the condition
    IF @EmployeeCount >= 3
    BEGIN
        PRINT 'The number of employees in the project p1 is 3 or more';
    END
    ELSE
    BEGIN
        PRINT 'The following employees work for the project p1';
        
        -- Show the employee names
        SELECT 
            e.FirstName,
            e.LastName
        FROM Company.dbo.Employee e
        JOIN Company.dbo.Works_on w 
            ON e.EmployeeID = w.EmployeeID
        WHERE w.ProjectNo = 'P1';
    END
END;
