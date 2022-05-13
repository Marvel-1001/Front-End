USE [literatureDB]
GO

UPDATE [nanc].[Users]
   SET [user_id] = <user_id, varchar(10),>
      ,[username] = <username, varchar(255),>
      ,[pwd_hash] = <pwd_hash, varchar(500),>
      ,[email] = <email, varchar(300),>
      ,[avatar] = <avatar, varchar(500),>
      ,[type] = <type, varchar(510),>
 WHERE <Search Conditions,,>
GO


