SELECT p.ProductID, ps.name
FROM Production.Product p JOIN Production.ProductSubcategory ps
ON p.ProductSubcategoryID=ps.ProductSubcategoryID;
