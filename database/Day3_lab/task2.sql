-- run these in terminal 
-- sudo cp /home/youssef/dataEngineer/database/lab3/AdventureWorksLT2019.bak /var/opt/mssql/data/
-- sudo chown mssql:mssql /var/opt/mssql/data/AdventureWorksLT2019.bak

-- RESTORE FILELISTONLY
-- FROM DISK = '/var/opt/mssql/data/AdventureWorks2022.bak';

RESTORE DATABASE AdventureWorks2022
FROM DISK = '/var/opt/mssql/data/AdventureWorks2022.bak'
WITH MOVE 'AdventureWorks2022' TO '/var/opt/mssql/data/AdventureWorks2022.mdf',
     MOVE 'AdventureWorks2022_log'  TO '/var/opt/mssql/data/AdventureWorks2022_log.ldf';
