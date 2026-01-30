-- CREATE FUNCTION dbo.fn_CalculateNetSalary
-- (
--     @Salary DECIMAL(10,2),
--     @ExperienceYears INT
-- )
-- RETURNS DECIMAL(10,2)
-- AS
-- BEGIN
--     DECLARE @IncreasePercent DECIMAL(5,2);
--     DECLARE @NetSalary DECIMAL(10,2);
--     SET @IncreasePercent = @ExperienceYears * 0.10;
--     IF @IncreasePercent>0.70
--         SET @IncreasePercent=0.70
--     SET @NetSalary = @Salary +(@Salary * @IncreasePercent);
--     RETURN @NetSalary;
-- END;


SELECT dbo.fn_CalculateNetSalary(5000, 3) AS NetSalary;
