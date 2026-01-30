-- CREATE View StudentPassedCourses as 
-- SELECT 
--     s.St_Fname + ' ' + s.St_Lname AS StudentName, sc.Grade
-- FROM 
--     [ITI].[dbo].Student as s
-- JOIN
--     [ITI].[dbo].Stud_Course sc
-- ON 
--     s.St_Id  = sc.St_Id
-- where 
--     sc.Grade > 50


SELECT * FROM StudentPassedCourses;