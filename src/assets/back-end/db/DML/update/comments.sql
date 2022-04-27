USE [literatureDB]
GO

UPDATE [nanc].[Comments]
   SET [comment_id] = <comment_id, varchar(25),>
      ,[body] = <body, varchar(1000),>
      ,[parentComment_Id] = <parentComment_Id, varchar(25),>
      ,[user_id] = <user_id, varchar(10),>
      ,[book_id] = <book_id, varchar(17),>
 WHERE <Search Conditions,,>
GO


