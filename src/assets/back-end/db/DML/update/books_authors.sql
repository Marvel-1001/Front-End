USE [literatureDB]
GO

UPDATE [nanc].[Books_Authors]
   SET [id] = <id, int,>
      ,[isbn] = <isbn, varchar(17),>
      ,[author_id] = <author_id, varchar(10),>
 WHERE <Search Conditions,,>
GO


