USE [literatureDB]
GO

/****** Object:  Table [nc].[Books_Authors]    Script Date: 26/04/2022 11:14:16 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nc].[Books_Authors](
	[id] [int] NOT NULL,
	[isbn] [varchar](17) NOT NULL,
	[author_id] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Books_Authors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [nc].[Books_Authors]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_Authors] FOREIGN KEY([author_id])
REFERENCES [nc].[Authors] ([author_id])
GO

ALTER TABLE [nc].[Books_Authors] CHECK CONSTRAINT [FK_Books_Authors_Authors]
GO

ALTER TABLE [nc].[Books_Authors]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors_Books] FOREIGN KEY([isbn])
REFERENCES [nc].[Books] ([ISBN])
GO

ALTER TABLE [nc].[Books_Authors] CHECK CONSTRAINT [FK_Books_Authors_Books]
GO


