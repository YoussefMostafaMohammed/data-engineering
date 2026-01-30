-- CREATE VIEW dbo.V1
-- AS
-- SELECT  St_Id,
--         St_Fname,
--         St_Lname,
--         St_Address
-- FROM    ITI.dbo.Student
-- WHERE   St_Address IN (N'Tanta',N'Cairo')
-- GROUP BY St_Id, St_Fname, St_Lname, St_Address; 
-- GO


-- Drop VIEW V1;

-- UPDATE V1 
-- SET St_Address = 'Cairo' 
-- WHERE St_Address = 'Tanta';

-- SELECT * FROM V1;

