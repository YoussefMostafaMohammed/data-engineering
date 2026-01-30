-- CREATE View InstructorsInSDorJava as 
-- SELECT 
--     i.Ins_Name AS InstructorName, d.Dept_Name AS DepartmentName
-- FROM 
--     [ITI].[dbo].Instructor AS i
-- JOIN
--     [ITI].[dbo].Department AS d
-- ON 
--     i.Dept_Id = d.Dept_Id
-- WHERE 
--     d.Dept_Name IN ('SD', 'Java');

SELECT * FROM InstructorsInSDorJava;
