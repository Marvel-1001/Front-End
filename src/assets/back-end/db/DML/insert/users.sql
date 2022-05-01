USE [literatureDB]
GO

INSERT INTO [nanc].[Users]
           ([user_id]
           ,[username]
           ,[pwd_hash]
           ,[email]
           ,[avatar]
           ,[type])
     VALUES
           (<user_id, varchar(10),>
           ,<username, varchar(255),>
           ,<pwd_hash, varchar(500),>
           ,<email, varchar(300),>
           ,<avatar, varchar(500),>
           ,<type, varchar(510),>)
GO


