CREATE FUNCTION dbo.GetStudentLocationMessage
(
    @StudentID INT
)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @FirstInitial CHAR(1);
    DECLARE @LastInitial CHAR(1);
    DECLARE @City VARCHAR(50);
    DECLARE @Message VARCHAR(100);
    
    SELECT 
        @FirstInitial = LEFT(FirstName, 1),
        @LastInitial = LEFT(LastName, 1),
        @City = City
    FROM ITI.dbo.Student
    WHERE StudentID = @StudentID;
    
    SET @Message = @FirstInitial + '.' + @LastInitial + '. lives in ';
    
    IF @City = 'Cairo'
        SET @Message = @Message + 'great cairo';
    ELSE IF @City = 'Alex'
        SET @Message = @Message + 'lovely Alexandria';
    ELSE IF @City = 'Mansoura'
        SET @Message = @Message + 'El-Mansoura';
    ELSE IF @City = 'Assiut'
        SET @Message = @Message + 'Assiut';
    ELSE
        SET @Message = @Message + 'Non ITI city';
    
    RETURN @Message;
END;
