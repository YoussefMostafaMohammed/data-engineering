use Company;

-- CREATE TABLE #EmployeeProject
-- (
--     EmployeeName NVARCHAR(100),
--     ProjectName NVARCHAR(100)
-- );

INSERT INTO #EmployeeProject (EmployeeName,ProjectName)
VALUES
('Youssef','First Project'),
('Joussef','Second Project');

SELECT * FROM #EmployeeProject;
