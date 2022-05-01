USE [literatureDB]
GO

/****** Object:  Table [nanc].[Authors]    Script Date: 26/04/2022 10:59:45 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nanc].[Authors](
	[author_id] [varchar](10) NOT NULL,
	[author_index] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](255) NOT NULL,
	[last_name] [varchar](255) NOT NULL,
	[bio] [varchar](500) NULL,
	[picture] [varchar](500) NULL,
	[book_count] [smallint] NOT NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [nanc].[Authors] ADD  CONSTRAINT [DF_Authors_book_count]  DEFAULT ((0)) FOR [book_count]
GO


