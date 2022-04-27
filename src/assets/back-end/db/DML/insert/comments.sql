USE [literatureDB]
GO

INSERT INTO [nanc].[Comments]
           ([comment_id]
           ,[body]
           ,[parentComment_Id]
           ,[user_id]
           ,[book_id])
     VALUES
           (<comment_id, varchar(25),>
           ,<body, varchar(1000),>
           ,<parentComment_Id, varchar(25),>
           ,<user_id, varchar(10),>
           ,<book_id, varchar(17),>)
GO


