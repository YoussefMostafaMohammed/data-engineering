-- ******************************************************** Task 1 *********************************************
-- CREATE DATABASE Company
-- ON PRIMARY
-- (
--     NAME = 'Net23-Company-Data',
--     FILENAME = '/var/opt/mssql/data/Net23-Company-Data.mdf',
--     SIZE = 10MB,
--     FILEGROWTH = 10%,
--     MAXSIZE = 50MB
-- )
-- LOG ON
-- (
--     NAME = 'Net23-Company-Log',
--     FILENAME = '/var/opt/mssql/data/Net23-Company-Log.ldf',
--     SIZE = 5MB,
--     FILEGROWTH = 10%,
--     MAXSIZE = 40MB
-- );


-- GO
-- ****************************************************Display Task 1 ******************************************

SELECT *
FROM sys.database_files;


-- ******************************************************** Task 2.a *********************************************

-- CREATE TABLE Department 
-- (
--     DeptNo INT PRIMARY KEY ,
--     Dept_Name NVARCHAR(20) NOT NULL,
--     Dept_Location NCHAR(2) check (Dept_Location IN('NY','DS','KW')) DEFAULT 'NY' NOT NULL /*YES we can use CHAR*/
-- )

-- INSERT INTO Department (DeptNo, Dept_Name, Dept_Location)
-- VALUES (10, 'Embedded', 'KW');

-- INSERT INTO Department (DeptNo, Dept_Name, Dept_Location)
-- VALUES (20, 'Embedded', 'KW');

-- INSERT INTO Department (DeptNo, Dept_Name)
-- VALUES (30, 'UIUX');


-- ******************************************************** Display Task 2.a *********************************************
-- SELECT * FROM Department;


-- ******************************************************** Task 2.b *********************************************




-- ALTER DATABASE Company
-- ADD FILEGROUP FG_Secondary;
-- ALTER DATABASE Company
-- ADD FILEGROUP FG_SecondaryNew;

-- ALTER DATABASE Company
-- ADD FILE (
--     NAME = 'Net23-Company-Employee',
--     FILENAME = '/var/opt/mssql/data/Net23-Company-Employee.ndf',
--     SIZE = 5MB,
--     MAXSIZE = 50MB,
--     FILEGROWTH = 5MB
-- ) TO FILEGROUP FG_Secondary;

SELECT *
FROM sys.database_files;

-- CREATE TABLE Employee
-- (
--     EmpNo INT PRIMARY KEY IDENTITY(1,1),
--     Emp_Fname NVARCHAR(20) NOT NULL,
--     Emp_Lname NVARCHAR(20) NOT NULL,
--     Department_number INT NOT NULL
--         CONSTRAINT FK_Employee_Department_Number
--         REFERENCES Department(DeptNo) ON DELETE CASCADE,
--     Salary INT NOT NULL
--         CONSTRAINT Chk_Salary check (Salary>700 and Salary <6000)
--         CONSTRAINT Unq_Salary_Employee UNIQUE(Salary),
-- )ON FG_Secondary; ;


-- SELECT
--     t.name AS TableName,
--     fg.name AS FileGroupName
-- FROM
--     sys.tables t
--     INNER JOIN
--     sys.indexes i ON t.object_id = i.object_id
--     INNER JOIN
--     sys.filegroups fg ON i.data_space_id = fg.data_space_id

-- SELECT *
-- From sys.tables;
-- SELECT *
-- From sys.indexes;
-- SELECT *
-- From sys.filegroups;


-- ******************************************************** Task 3 *********************************************
-- ALTER TABLE Employee ADD TelephoneNumber VARCHAR(20);
-- EXEC sp_help Employee;

-- ALTER TABLE employee DROP COLUMN TelephoneNumber;
-- EXEC sp_help Employee;

-- ******************************************************** Task 4 *********************************************



-- CREATE SCHEMA Company
-- ALTER SCHEMA Company
-- TRANSFER dbo.Department;



-- ******************************************************** Task 5 *********************************************

-- ALTER TABLE Employee DROP COLUMN EmpNo;
-- EXEC sp_help Employee;


-- ******************************************************** Task 6 *********************************************

-- INSERT Project(ProjectName, Budget)
-- VALUES
--     ( 'Apollo',  120000),
--     ( 'Gemini',   95000),
--     ( 'Mercury', 185600);


-- INSERT Employee(Emp_Fname, Emp_Lname, Department_number, Salary)
-- VALUES
--     ('Youssef','Mostafa',    20, 5000),
--     ('Mathew',  'Smith',     10, 2000),
--     ('Ann',     'Jones',     20, 3000),
--     ('John',    'Barrimore', 10, 4000);


-- INSERT Works_on(EmployeeNo, ProjectNo, Job)
-- VALUES
--     (1, 1, 'Analyst' ),
--     (2, 2, 'Manager'),
--     (3, 3, 'Clerk');

SELECT * FROM Project;
SELECT * FROM Works_on;


-- ******************************************************** Task 7 *********************************************

-- NO parent record
-- No 11111 in the employee table
-- No ON UPDATE CASCADE
-- NO on Delete Cascade
 
