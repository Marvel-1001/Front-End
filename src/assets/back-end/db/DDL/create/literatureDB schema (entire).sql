USE [master]
GO
/****** Object:  Database [literatureDB]    Script Date: 28/04/2022 9:36:17 pm ******/
CREATE DATABASE [literatureDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'literatureDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\literatureDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'literatureDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\literatureDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [literatureDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [literatureDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [literatureDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [literatureDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [literatureDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [literatureDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [literatureDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [literatureDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [literatureDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [literatureDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [literatureDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [literatureDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [literatureDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [literatureDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [literatureDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [literatureDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [literatureDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [literatureDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [literatureDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [literatureDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [literatureDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [literatureDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [literatureDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [literatureDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [literatureDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [literatureDB] SET  MULTI_USER 
GO
ALTER DATABASE [literatureDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [literatureDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [literatureDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [literatureDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [literatureDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [literatureDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [literatureDB] SET QUERY_STORE = OFF
GO
USE [literatureDB]
GO
/****** Object:  Schema [nc]    Script Date: 28/04/2022 9:36:17 pm ******/
CREATE SCHEMA [nc]
GO
/****** Object:  Table [nc].[Authors]    Script Date: 28/04/2022 9:36:17 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nc].[Authors](
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
/****** Object:  Table [nc].[Books]    Script Date: 28/04/2022 9:36:17 pm ******/
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
/****** Object:  Table [nc].[Books_Authors]    Script Date: 28/04/2022 9:36:17 pm ******/
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
/****** Object:  Table [nc].[Comments]    Script Date: 28/04/2022 9:36:17 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nc].[Comments](
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
/****** Object:  Table [nc].[Publishers]    Script Date: 28/04/2022 9:36:17 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nc].[Publishers](
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
/****** Object:  Table [nc].[Users]    Script Date: 28/04/2022 9:36:17 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [nc].[Users](
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
ALTER TABLE [nc].[Authors] ADD  CONSTRAINT [DF_Authors_book_count]  DEFAULT ((0)) FOR [book_count]
GO
ALTER TABLE [nc].[Publishers] ADD  CONSTRAINT [DF_Publishers_book_count]  DEFAULT ((0)) FOR [book_count]
GO
ALTER TABLE [nc].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publishers] FOREIGN KEY([publisher_id])
REFERENCES [nc].[Publishers] ([pub_id])
GO
ALTER TABLE [nc].[Books] CHECK CONSTRAINT [FK_Book_Publishers]
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
ALTER TABLE [nc].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments] FOREIGN KEY([comment_id])
REFERENCES [nc].[Comments] ([comment_id])
GO
ALTER TABLE [nc].[Comments] CHECK CONSTRAINT [FK_Comments_Comments]
GO
USE [master]
GO
ALTER DATABASE [literatureDB] SET  READ_WRITE 
GO
