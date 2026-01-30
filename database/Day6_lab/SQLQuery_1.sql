-- CREATE FUNCTION dbo.fn_EmployeesInfo()
-- RETURNS TABLE
-- AS
-- RETURN
-- (
--     SELECT
--         P.FirstName + ' ' + P.LastName AS EmployeeName,

--         ISNULL(E.JobTitle, 'Not provided') AS Title,

--         CASE E.MaritalStatus
--             WHEN 'S' THEN 'Single'
--             WHEN 'M' THEN 'Married'
--             ELSE 'Not provided'
--         END AS MaritalStatus,

--         CASE E.Gender
--             WHEN 'M' THEN 'Male'
--             WHEN 'F' THEN 'Female'
--             ELSE 'Not provided'
--         END AS Gender

--     FROM HumanResources.Employee E
--     INNER JOIN Person.Person P
--         ON E.BusinessEntityID = P.BusinessEntityID
-- );
-- GO


SELECT *
FROM dbo.fn_EmployeesInfo();
