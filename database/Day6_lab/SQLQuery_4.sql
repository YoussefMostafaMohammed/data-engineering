CREATE FUNCTION dbo.GetTopSalariesByDepartment
(
    @DepartmentID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 10
        p.FirstName + ' ' + p.LastName AS EmployeeName,
        ep.Rate AS Salary
    FROM HumanResources.Employee e
    JOIN Person.Person p ON e.BusinessEntityID = p.BusinessEntityID
    JOIN HumanResources.EmployeeDepartmentHistory edh 
        ON e.BusinessEntityID = edh.BusinessEntityID
    JOIN HumanResources.EmployeePayHistory ep 
        ON e.BusinessEntityID = ep.BusinessEntityID
    WHERE edh.DepartmentID = @DepartmentID AND edh.EndDate IS NULL 
    ORDER BY ep.Rate DESC
);
GO

SELECT * FROM dbo.GetTopSalariesByDepartment(1);