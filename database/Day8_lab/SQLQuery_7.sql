-- Each table can have only one clustered index (usually on primary key)
CREATE CLUSTERED INDEX IX_Employee_ID 
ON Company.dbo.Employee(EmployeeID);




-- Creates a separate index structure that points to the data
CREATE NONCLUSTERED INDEX IX_Employee_Name 
ON Company.dbo.Employee(LastName, FirstName);



-- Ensures no two employees have the same SSN
CREATE UNIQUE INDEX IX_Employee_SSN 
ON Company.dbo.Employee(SSN);


