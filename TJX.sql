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
	[ValidFromDate] [date] NOT NULL,
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

-- INSERTING DATA INTO THE TABLES
INSERT [dbo].[Country] ([Name], [CountryCode], [CurrencyCode]) VALUES (N'United States of America', N'USA', N'USD')
INSERT [dbo].[Country] ([Name], [CountryCode], [CurrencyCode]) VALUES (N'Deutschland', N'DEU', N'EUR')
INSERT [dbo].[Country] ([Name], [CountryCode], [CurrencyCode]) VALUES (N'Australia', N'AUS', N'AUD')
GO

INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'USD', CAST(1.24 AS Decimal(18, 2)), CAST(N'2024-01-01' AS Date),NULL)
INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'EUR', CAST(1.14 AS Decimal(18, 2)), CAST(N'2024-01-01' AS Date),NULL)
INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'AUD', CAST(1.92 AS Decimal(18, 2)), CAST(N'2024-01-01' AS Date),NULL)

INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'USD', CAST(1.29 AS Decimal(18, 2)), CAST(N'2023-12-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'EUR', CAST(1.16 AS Decimal(18, 2)), CAST(N'2023-12-01' AS Date), CAST(N'2023-12-31' AS Date))
INSERT [dbo].[Currency] ([CurrencyCode], [ExchangeRate], [ValidFromDate], [ValidToDate]) VALUES (N'AUD', CAST(1.87 AS Decimal(18, 2)), CAST(N'2023-12-01' AS Date), CAST(N'2023-12-31' AS Date))
GO



