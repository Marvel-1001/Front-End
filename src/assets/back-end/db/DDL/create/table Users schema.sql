USE [literatureDB]
GO

/****** Object:  Table [nanc].[Users]    Script Date: 26/04/2022 11:16:11 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nanc].[Users](
	[user_id] [varchar](10) NOT NULL,
	[user_index] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[pwd_hash] [varchar](500) NOT NULL,
	[email] [varchar](300) NULL,
	[avatar] [varchar](500) NULL,
	[type] [varchar](510) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


