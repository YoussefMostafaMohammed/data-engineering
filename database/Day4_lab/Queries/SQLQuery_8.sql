SELECT Title,FirstName,LastName FROM [AdventureWorks2022].[Person].Person
    where (Title = 'Ms.' and FirstName='Catherine') or (LastName='Adams');