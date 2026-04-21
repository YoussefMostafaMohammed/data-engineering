CREATE FUNCTION dbo.GetDepartmentTotals()
RETURNS @Result TABLE
(
    Description VARCHAR(50),
    Development VARCHAR(50),
    [Quality assurance] VARCHAR(50)
)
AS
BEGIN
    DECLARE @DevCount INT, @DevSum DECIMAL(10,2);
    DECLARE @QACount INT, @QASum DECIMAL(10,2);
    SELECT 
        @DevCount = COUNT(*),
        @DevSum = SUM(Salary)
    FROM Company.dbo.Employee
    WHERE DepartmentID = 1;
    
    SELECT 
        @QACount = COUNT(*),
        @QASum = SUM(Salary)
    FROM Company.dbo.Employee
    WHERE DepartmentID = 2;
    
    INSERT INTO @Result VALUES 
    ('No. of employees', CAST(@DevCount AS VARCHAR), CAST(@QACount AS VARCHAR));
    
    INSERT INTO @Result VALUES 
    ('Sum of Salaries', CAST(@DevSum AS VARCHAR), CAST(@QASum AS VARCHAR));
    
    RETURN;
END;
