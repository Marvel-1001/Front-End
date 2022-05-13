USE [literatureDB]
GO

UPDATE [nc].[Books]
   SET [ISBN] = <ISBN, varchar(17),>
      ,[book_name] = <book_name, varchar(255),>
      ,[title] = <title, varchar(255),>
      ,[edition] = <edition, varchar(6),>
      ,[genre] = <genre, varchar(255),>
      ,[publisher_name] = <publisher_name, varchar(255),>
      ,[publisher_id] = <publisher_id, varchar(10),>
      ,[year_published] = <year_published, date,>
      ,[language] = <language, varchar(100),>
      ,[image_ref] = <image_ref, varchar(500),>
      ,[synopsis] = <synopsis, varchar(1000),>
      ,[page_count] = <page_count, int,>
      ,[time_added] = <time_added, datetime2(7),>
 WHERE <Search Conditions,,>
GO


