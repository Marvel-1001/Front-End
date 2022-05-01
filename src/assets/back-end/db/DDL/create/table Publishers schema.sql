USE [literatureDB]
GO

/****** Object:  Table [nanc].[Publishers]    Script Date: 26/04/2022 11:15:27 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nanc].[Publishers](
	[pub_id] [varchar](10) NOT NULL,
	[pub_index] [int] IDENTITY(1,1) NOT NULL,
	[pub_name] [varchar](255) NOT NULL,
	[url] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[bio] [varchar](255) NULL,
	[book_count] [smallint] NOT NULL,
 CONSTRAINT [PK_Publishers] PRIMARY KEY CLUSTERED 
(
	[pub_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [nanc].[Publishers] ADD  CONSTRAINT [DF_Publishers_book_count]  DEFAULT ((0)) FOR [book_count]
GO


