USE [literatureDB]
GO

UPDATE [nanc].[Authors]
   SET [author_id] = <author_id, varchar(10),>
      ,[first_name] = <first_name, varchar(255),>
      ,[last_name] = <last_name, varchar(255),>
      ,[bio] = <bio, varchar(500),>
      ,[picture] = <picture, varchar(500),>
      ,[book_count] = <book_count, smallint,>
 WHERE <Search Conditions,,>
GO


