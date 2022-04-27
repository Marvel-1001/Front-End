USE [literatureDB]
GO

UPDATE [nanc].[Publishers]
   SET [pub_id] = <pub_id, varchar(10),>
      ,[pub_name] = <pub_name, varchar(255),>
      ,[url] = <url, varchar(255),>
      ,[address] = <address, varchar(255),>
      ,[bio] = <bio, varchar(255),>
      ,[book_count] = <book_count, smallint,>
 WHERE <Search Conditions,,>
GO


