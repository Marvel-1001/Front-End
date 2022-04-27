USE [literatureDB]
GO

INSERT INTO [nanc].[Books]
           ([ISBN]
           ,[book_name]
           ,[title]
           ,[edition]
           ,[genre]
           ,[publisher_name]
           ,[publisher_id]
           ,[year_published]
           ,[language]
           ,[image_ref]
           ,[synopsis])
     VALUES
           (<ISBN, varchar(17),>
           ,<book_name, varchar(255),>
           ,<title, varchar(255),>
           ,<edition, varchar(6),>
           ,<genre, varchar(255),>
           ,<publisher_name, varchar(255),>
           ,<publisher_id, varchar(10),>
           ,<year_published, date,>
           ,<language, varchar(100),>
           ,<image_ref, varchar(500),>
           ,<synopsis, varchar(1000),>)
GO


