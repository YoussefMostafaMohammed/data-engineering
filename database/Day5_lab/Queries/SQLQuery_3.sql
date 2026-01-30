-- RESTORE FILELISTONLY
-- FROM DISK = '/home/youssef/Desktop/ITI.bak';


-- RESTORE DATABASE ITI
-- FROM DISK = '/home/youssef/Desktop/ITI.bak'
-- WITH MOVE 'ITI' TO '/var/opt/mssql/data/ITI.mdf',
--      MOVE 'ITI_log'  TO '/var/opt/mssql/data/ITI_log.ldf',
--      REPLACE;
-- GO

CREATE DEFAULT DF_NotAppliedRule AS 'Not Applied';

