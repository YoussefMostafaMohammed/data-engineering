CREATE FUNCTION dbo.fn_Top10SalariesByDepartment(
    @DepartmentID INT
)

RETURNS TABLE
AS
RETURN 
(
    SELECT TOP(10)
        
);


-- SELECT * FROM dbo.fn_Top10SalariesByDepartment(4);
