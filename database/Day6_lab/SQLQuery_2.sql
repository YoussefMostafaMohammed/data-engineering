-- CREATE FUNCTION dbo.fn_EmployeeExperience()
-- RETURNS TABLE
-- AS
-- RETURN
-- (
--     SELECT
--         P.FirstName + ' ' + P.LastName AS EmployeeName,

--         E.JobTitle AS Title,

--         DATEDIFF(YEAR, E.HireDate, GETDATE()) AS ExperienceYears,

--         FORMAT(
--             DATEADD(YEAR, 21, E.BirthDate),
--             'dd, MMM yyyy'
--         ) AS GraduationDate

--     FROM HumanResources.Employee E
--     INNER JOIN Person.Person P
--         ON E.BusinessEntityID = P.BusinessEntityID
-- );

 SELECT * FROM dbo.fn_EmployeeExperience();
