USE [literatureDB]
GO

/****** Object:  Table [nc].[Books]    Script Date: 28/04/2022 9:34:15 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [nc].[Books](
	[ISBN] [varchar](17) NOT NULL,
	[book_index] [int] IDENTITY(1,1) NOT NULL,
	[book_name] [varchar](255) NOT NULL,
	[title] [varchar](255) NULL,
	[edition] [varchar](6) NOT NULL,
	[genre] [varchar](255) NOT NULL,
	[publisher_name] [varchar](255) NOT NULL,
	[publisher_id] [varchar](10) NOT NULL,
	[year_published] [date] NOT NULL,
	[language] [varchar](100) NOT NULL,
	[image_ref] [varchar](500) NULL,
	[synopsis] [varchar](1000) NULL,
	[page_count] [int] NULL,
	[time_added] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [nc].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publishers] FOREIGN KEY([publisher_id])
REFERENCES [nc].[Publishers] ([pub_id])
GO

ALTER TABLE [nc].[Books] CHECK CONSTRAINT [FK_Book_Publishers]
GO


