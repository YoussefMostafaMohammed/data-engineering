SELECT Name
FROM Production.ProductSubcategory
WHERE ProductSubcategoryID IN (
    SELECT ProductSubcategoryID
    FROM Production.Product
    WHERE Name LIKE 'B%'
);
