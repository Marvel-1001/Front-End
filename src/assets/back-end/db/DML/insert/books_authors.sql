USE [literatureDB]
GO

INSERT INTO [nc].[Books_Authors]
           ([id]
           ,[isbn]
           ,[author_id])
     VALUES
           (<id, int,>
           ,<isbn, varchar(17),>
           ,<author_id, varchar(10),>)
GO


