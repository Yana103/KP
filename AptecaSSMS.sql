USE [master]
GO
/****** Object:  Database [Apteca]    Script Date: 21.04.2023 1:11:02 ******/
CREATE DATABASE [Apteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Apteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Apteca.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Apteca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Apteca_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Apteca] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Apteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Apteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Apteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Apteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Apteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Apteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [Apteca] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Apteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Apteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Apteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Apteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Apteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Apteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Apteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Apteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Apteca] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Apteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Apteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Apteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Apteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Apteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Apteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Apteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Apteca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Apteca] SET  MULTI_USER 
GO
ALTER DATABASE [Apteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Apteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Apteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Apteca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Apteca] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Apteca] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Apteca] SET QUERY_STORE = OFF
GO
USE [Apteca]
GO
/****** Object:  Table [dbo].[Cheque]    Script Date: 21.04.2023 1:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cheque](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MedicinesId] [int] NOT NULL,
	[Operation_number] [int] NULL,
	[Date] [date] NULL,
	[Sum] [int] NULL,
	[Status] [nchar](20) NULL,
 CONSTRAINT [PK_Cheque] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicines]    Script Date: 21.04.2023 1:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicines](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Receipt_date] [date] NULL,
	[Name_medicines] [nchar](20) NULL,
	[Expiration_date] [date] NULL,
	[Price] [int] NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Medicines] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21.04.2023 1:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 21.04.2023 1:11:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Surname] [nchar](10) NULL,
	[Login] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cheque] ON 

INSERT [dbo].[Cheque] ([Id], [MedicinesId], [Operation_number], [Date], [Sum], [Status]) VALUES (1, 1, 5774, CAST(N'2023-11-22' AS Date), 553, N'Оплачено            ')
INSERT [dbo].[Cheque] ([Id], [MedicinesId], [Operation_number], [Date], [Sum], [Status]) VALUES (2, 2, 7324, CAST(N'2023-11-21' AS Date), 892, N'Отказ банка         ')
SET IDENTITY_INSERT [dbo].[Cheque] OFF
GO
SET IDENTITY_INSERT [dbo].[Medicines] ON 

INSERT [dbo].[Medicines] ([Id], [Receipt_date], [Name_medicines], [Expiration_date], [Price], [Quantity]) VALUES (1, CAST(N'2023-05-11' AS Date), N'Найз                ', CAST(N'2025-03-23' AS Date), 553, 67)
INSERT [dbo].[Medicines] ([Id], [Receipt_date], [Name_medicines], [Expiration_date], [Price], [Quantity]) VALUES (2, CAST(N'2023-12-03' AS Date), N'Кетонал             ', CAST(N'2026-04-07' AS Date), 892, 34)
SET IDENTITY_INSERT [dbo].[Medicines] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Провизор  ')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Фармацевт ')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Surname], [Login], [Password], [RoleId]) VALUES (1, N'Maxim     ', N'Vladykin  ', N'12        ', N'34        ', 1)
INSERT [dbo].[User] ([Id], [Name], [Surname], [Login], [Password], [RoleId]) VALUES (3, N'Maksim    ', N'Vladykins ', N'123       ', N'123       ', 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cheque]  WITH CHECK ADD  CONSTRAINT [FK_Cheque_Medicines] FOREIGN KEY([MedicinesId])
REFERENCES [dbo].[Medicines] ([Id])
GO
ALTER TABLE [dbo].[Cheque] CHECK CONSTRAINT [FK_Cheque_Medicines]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Apteca] SET  READ_WRITE 
GO
