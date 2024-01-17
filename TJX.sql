USE [master]
GO

/****** Object:  Database [TJX_Challenge]    Script Date: 18-01-2024 03:28:45 ******/
CREATE DATABASE [TJX_Challenge]
Go

USE [TJX_Challenge]
GO

/****** Object:  Table [dbo].[Country]    Script Date: 18-01-2024 03:20:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Country](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CountryCode] [nvarchar](3) NOT NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL
) ON [PRIMARY]
GO

USE [TJX_Challenge]
GO

/****** Object:  Table [dbo].[Currency]    Script Date: 18-01-2024 03:32:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Currency](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyCode] [nvarchar](3) NOT NULL,
	[ExchangeRate] [decimal](18, 2) NULL,
	[ValidFromDate] [date] NULL,
	[ValidToDate] [date] NULL
) ON [PRIMARY]
GO

USE [TJX_Challenge]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 18-01-2024 03:32:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Price] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO



