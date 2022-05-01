USE [literatureDB]
GO

/****** Object:  Table [nanc].[Comments]    Script Date: 26/04/2022 11:15:11 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nanc].[Comments](
	[comment_id] [varchar](25) NOT NULL,
	[comment_index] [int] IDENTITY(1,1) NOT NULL,
	[body] [varchar](1000) NOT NULL,
	[parentComment_Id] [varchar](25) NULL,
	[user_id] [varchar](10) NOT NULL,
	[book_id] [varchar](17) NOT NULL,
	[time] [timestamp] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [nanc].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments] FOREIGN KEY([comment_id])
REFERENCES [nanc].[Comments] ([comment_id])
GO

ALTER TABLE [nanc].[Comments] CHECK CONSTRAINT [FK_Comments_Comments]
GO


