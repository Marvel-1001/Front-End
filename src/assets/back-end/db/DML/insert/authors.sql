USE [literatureDB]
GO

INSERT INTO [nc].[Authors]
           ([author_id]
           ,[first_name]
           ,[last_name]
           ,[bio]
           ,[picture]
           ,[book_count])
     VALUES
           (<author_id, varchar(10),>
           ,<first_name, varchar(255),>
           ,<last_name, varchar(255),>
           ,<bio, varchar(500),>
           ,<picture, varchar(500),>
           ,<book_count, smallint,>)
GO


