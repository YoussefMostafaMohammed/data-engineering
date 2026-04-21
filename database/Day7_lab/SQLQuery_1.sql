CREATE PROCEDURE dbo.GetStudentCountByDept
AS
BEGIN
    SELECT 
        d.DeptName,
        COUNT(s.StudentID) AS StudentCount
    FROM ITI.dbo.Department d
    LEFT JOIN ITI.dbo.Student s 
        ON d.DeptID = s.DeptID
    GROUP BY d.DeptID, d.DeptName
    ORDER BY StudentCount DESC;
END;
