-- CREATE View V_InstructorCourseCount 
-- AS 
-- SELECT INS.Ins_Name AS Instructor_Name, COUNT(Crs_Id) AS Course_Count
-- From [dbo].[Instructor] AS INS 
--     JOIN
--         [dbo].[Ins_Course] AS INSC
--     ON 
--         INS.Ins_Id =INSC.Ins_Id
-- GROUP BY INS.Ins_Id,INS.Ins_Name;

-- DROP VIEW V_InstructorCourseCount;

SELECT * FROM V_InstructorCourseCount;
