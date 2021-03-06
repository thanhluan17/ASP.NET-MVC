USE [master]
GO
/****** Object:  Database [VoThanhLuanDB]    Script Date: 20-Jun-21 12:05:22 PM ******/
CREATE DATABASE [VoThanhLuanDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VoThanhLuanDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VoThanhLuanDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VoThanhLuanDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\VoThanhLuanDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VoThanhLuanDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VoThanhLuanDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VoThanhLuanDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VoThanhLuanDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VoThanhLuanDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VoThanhLuanDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VoThanhLuanDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [VoThanhLuanDB] SET  MULTI_USER 
GO
ALTER DATABASE [VoThanhLuanDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VoThanhLuanDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VoThanhLuanDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VoThanhLuanDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VoThanhLuanDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VoThanhLuanDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [VoThanhLuanDB] SET QUERY_STORE = OFF
GO
USE [VoThanhLuanDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 20-Jun-21 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20-Jun-21 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UnitCost] [decimal](15, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Image] [varchar](50) NULL,
	[Description] [nvarchar](200) NULL,
	[Status] [varchar](50) NULL,
	[CategoryID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 20-Jun-21 12:05:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE001', N'Adidas', N'Addidas sport shoes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE002', N'Nike', N'Nike sport shoes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE003', N'Puma', N'Puma clothes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE004', N'Louis Vuitton', N'Louis Vuitton clothes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE005', N'Burberry', N'Burberry hats')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE006', N'Gucci', N'Gucci hats')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE007', N'Stussy', N'Stussy clothes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE008', N'Balenciaga', N'Balenciaga shoes')
INSERT [dbo].[Category] ([CategoryID], [Name], [Description]) VALUES (N'CATE009', N'NY', N'NY hats')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (1, N'Dép Adilette Comfort', CAST(800000 AS Decimal(15, 0)), 73, N'/ckfinder/userfiles/images/sp1.jpg', N'38,39,40...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (2, N'Giày Nike Air Force', CAST(1550000 AS Decimal(15, 0)), 17, N'/ckfinder/userfiles/images/sp2.jpg', N'39,40,41...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (4, N'Giày Nike Air G-Dragon', CAST(1440000 AS Decimal(15, 0)), 107, N'/ckfinder/userfiles/images/sp4.jpg', N'39,40,41...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (5, N'Áo thun Puma Active', CAST(300000 AS Decimal(15, 0)), 92, N'/ckfinder/userfiles/images/sp5.jpg', N'XL,XXL...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (6, N'Áo phông lưới LV Europe', CAST(450000 AS Decimal(15, 0)), 5, N'/ckfinder/userfiles/images/sp6.jpg', N'S,X,XL...', N'Out of stock', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (7, N'Áo thun nam Puma Iconic', CAST(350000 AS Decimal(15, 0)), 19, N'/ckfinder/userfiles/images/sp7.jpg', N'X,2XL...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (8, N'Áo LV phản quang bảy màu', CAST(970000 AS Decimal(15, 0)), 12, N'/ckfinder/userfiles/images/sp8.jpg', N'S,XS,L...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (9, N'Mũ Burberry Heavy Cotton', CAST(1450000 AS Decimal(15, 0)), 1, N'/ckfinder/userfiles/images/sp9.jpg', N'S,M,L...', N'Out of stock', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (10, N'Mũ lưỡi trai Gucci Beige', CAST(940000 AS Decimal(15, 0)), 7, N'/ckfinder/userfiles/images/sp10.jpg', N'XL,2XL...', N'Out of stock', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (11, N'Mũ lưỡi trai Burberry', CAST(570000 AS Decimal(15, 0)), 5, N'/ckfinder/userfiles/images/sp11.jpg', N'XS,M,L...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (12, N'Mũ bóng chày Addidas', CAST(450000 AS Decimal(15, 0)), 20, N'/ckfinder/userfiles/images/sp12.jpg', N'2XL,3XL...', N'Available', N'CATE001')
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [CategoryID]) VALUES (17, N'Giày thể thao Adidas', CAST(550000 AS Decimal(15, 0)), 20, N'/ckfinder/userfiles/images/sp3.jpg', N'38,39,40...', N'Available', N'CATE001')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'Admin', N'21232f297a57a5a743894a0e4a801fc3', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'luan', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'khoa', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (4, N'xuyen', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'anh', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'mai', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (7, N'thao', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (8, N'tuan', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (9, N'hung', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'trang', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activate')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (11, N'van', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (12, N'khanh', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activated')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (13, N'toan', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (14, N'hung', N'827ccb0eea8a706c4c34a16891f84e7b', N'Activated')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (15, N'quy', N'827ccb0eea8a706c4c34a16891f84e7b', N'Blocked')
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [fk_Product_Type] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [fk_Product_Type]
GO
USE [master]
GO
ALTER DATABASE [VoThanhLuanDB] SET  READ_WRITE 
GO
