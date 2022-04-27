USE [literatureDB]
GO

INSERT INTO [nanc].[Publishers]
           ([pub_id]
           ,[pub_name]
           ,[url]
           ,[address]
           ,[bio]
           ,[book_count])
     VALUES
           (<pub_id, varchar(10),>
           ,<pub_name, varchar(255),>
           ,<url, varchar(255),>
           ,<address, varchar(255),>
           ,<bio, varchar(255),>
           ,<book_count, smallint,>)
GO


