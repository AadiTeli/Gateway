USE [master]
GO
/****** Object:  Database [Hotel Management System]    Script Date: 13-01-2021 02:25:02 PM ******/
CREATE DATABASE [Hotel Management System] ON  PRIMARY 
( NAME = N'Hotel Management System', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Hotel Management System.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hotel Management System_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Hotel Management System_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hotel Management System] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel Management System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel Management System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel Management System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel Management System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel Management System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel Management System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel Management System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotel Management System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel Management System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel Management System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel Management System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel Management System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel Management System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel Management System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel Management System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel Management System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hotel Management System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel Management System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel Management System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel Management System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel Management System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel Management System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel Management System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel Management System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hotel Management System] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel Management System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel Management System] SET DB_CHAINING OFF 
GO
USE [Hotel Management System]
GO
/****** Object:  Table [dbo].[Bookings]    Script Date: 13-01-2021 02:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomId] [int] NULL,
	[BookingDate] [datetime] NULL,
	[BookingStatus] [nvarchar](25) NULL,
 CONSTRAINT [PK_Bookings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 13-01-2021 02:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[City] [nvarchar](30) NOT NULL,
	[Pincode] [numeric](18, 0) NOT NULL,
	[ContactNo] [bigint] NOT NULL,
	[ContactPerson] [nvarchar](50) NULL,
	[Website] [nvarchar](50) NULL,
	[Facebook] [nvarchar](50) NULL,
	[Twitter] [nvarchar](50) NULL,
	[IsActive] [char](1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 13-01-2021 02:25:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](50) NOT NULL,
	[RoomCategory] [nvarchar](50) NOT NULL,
	[RoomPrice] [numeric](18, 0) NOT NULL,
	[IsActive] [char](1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[HotelId] [int] NOT NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 

INSERT [dbo].[Bookings] ([Id], [RoomId], [BookingDate], [BookingStatus]) VALUES (1, 3, CAST(N'2020-04-12T00:00:00.000' AS DateTime), N'Cancelled')
INSERT [dbo].[Bookings] ([Id], [RoomId], [BookingDate], [BookingStatus]) VALUES (2, 6, CAST(N'2020-05-12T00:00:00.000' AS DateTime), N'Definitive')
INSERT [dbo].[Bookings] ([Id], [RoomId], [BookingDate], [BookingStatus]) VALUES (3, 5, CAST(N'2020-10-12T00:00:00.000' AS DateTime), N'Deleted')
INSERT [dbo].[Bookings] ([Id], [RoomId], [BookingDate], [BookingStatus]) VALUES (4, 4, CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Optional')
INSERT [dbo].[Bookings] ([Id], [RoomId], [BookingDate], [BookingStatus]) VALUES (5, 7, CAST(N'2020-11-12T00:00:00.000' AS DateTime), N'Optional')
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 

INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (2, N'Rama Hotel', N'Navsari', N'Navsari', CAST(396450 AS Numeric(18, 0)), 9621221615, N'Muhamed Teli', N'ramaHotel.com', N'Rama hotel', N'Rama hotel', N'Y', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Raman', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (3, N'Hotel Kohinoor', N'Navsari', N'Navsari', CAST(396450 AS Numeric(18, 0)), 9621221615, N'Rohit Dwivedi', N'KohinoorHotel.com', N'Kohinoor Hotel', N'Kohinoor Hotel', N'Y', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Rajan', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (4, N'Juhu Hotel', N'Navsari', N'Navsari', CAST(396450 AS Numeric(18, 0)), 9621221615, N'Raju Singh', N'Juhu.com', N'Juhu hotel', N'Juhu hotel', N'Y', CAST(N'2021-01-11T14:30:29.407' AS DateTime), N'Raju', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (5, N'Abu Hotel', N'Navsari', N'Navsari', CAST(396450 AS Numeric(18, 0)), 9621221615, N'Hema Singh', N'Abu.com', N'Abu hotel', N'Abu hotel', N'Y', CAST(N'2021-01-11T14:34:00.537' AS DateTime), N'Hema', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (6, N'Your Food Hotel', N'Navsari', N'Navsari', CAST(396450 AS Numeric(18, 0)), 9621221615, N'Raja Singh', N'YourFoodHotel.com', N'Your Food Hotel', N'Your Food Hotel', N'Y', CAST(N'2021-01-11T14:35:11.203' AS DateTime), N'Raja', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (7, N'IQ Hotel', N'Surat', N'Surat', CAST(345250 AS Numeric(18, 0)), 9621221615, N'Abhay Singh', N'IQHotel.com', N'IQ Hotel', N'IQ Hotel', N'Y', CAST(N'2021-01-11T14:36:36.370' AS DateTime), N'Abhay', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (8, N'Lambo Hotel', N'Nadiad', N'Nadiad', CAST(245520 AS Numeric(18, 0)), 9621221615, N'Ranu Singh', N'LamboHotel.com', N'Lambo Hotel', N'Lambo Hotel', N'Y', CAST(N'2021-01-11T14:40:13.910' AS DateTime), N'Abhay', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (9, N'Ambika Hotel', N'Ahmedabad', N'Ahmedabad', CAST(245520 AS Numeric(18, 0)), 9621221615, N'Ambika Singh', N'AmbikaHotel.com', N'Ambika Hotel', N'Ambika Hotel', N'Y', CAST(N'2021-01-11T14:44:05.983' AS DateTime), N'Abhay', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (10, N'Aman Hotel', N'Ahmedabad', N'Ahmedabad', CAST(245520 AS Numeric(18, 0)), 9621221615, N'Aman Singh', N'AmanHotel.com', N'Aman Hotel', N'Aman Hotel', N'Y', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Aman', NULL, NULL)
INSERT [dbo].[Hotels] ([Id], [HotelName], [Address], [City], [Pincode], [ContactNo], [ContactPerson], [Website], [Facebook], [Twitter], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy]) VALUES (11, N'Rohan Hotel', N'Ahmedabad', N'Ahmedabad', CAST(245520 AS Numeric(18, 0)), 9621221615, N'Rohan Singh', N'RohanHotel.com', N'Rohan Hotel', N'Rohan Hotel', N'Y', CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Rohan', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 

INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (1, N'Sweet', N'size 36-50 m2', CAST(10000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:21:52.260' AS DateTime), N'Raju', NULL, NULL, 2)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (2, N'KING SIZE ROOM', N'size 51-100 m2', CAST(100000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:23:16.227' AS DateTime), N'Raju', NULL, NULL, 2)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (3, N'Single Bed Room', N'size <35 m2', CAST(5000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:24:38.317' AS DateTime), N'Raju', NULL, NULL, 2)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (4, N'Single Bed Room', N'size <35 m2', CAST(5000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:25:37.810' AS DateTime), N'Raju', NULL, NULL, 5)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (5, N'KING SIZE ROOM', N'size 51-100 m2', CAST(100000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:26:11.073' AS DateTime), N'Raju', NULL, NULL, 5)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (6, N'Single Bed Room', N'size <35 m2', CAST(6000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:26:47.007' AS DateTime), N'Raju', NULL, NULL, 3)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (7, N'Single Bed Room', N'size <35 m2', CAST(7000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:26:55.127' AS DateTime), N'Raju', NULL, NULL, 4)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (8, N'Single Bed Room', N'size <35 m2', CAST(4000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:27:02.547' AS DateTime), N'Raju', NULL, NULL, 6)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (9, N'Single Bed Room', N'size <35 m2', CAST(3000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:27:13.177' AS DateTime), N'Raju', NULL, NULL, 7)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (10, N'Single Bed Room', N'size <35 m2', CAST(7000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:27:22.477' AS DateTime), N'Raju', NULL, NULL, 8)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (11, N'Single Bed Room', N'size <35 m2', CAST(2400 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:28:03.790' AS DateTime), N'Raju', NULL, NULL, 9)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (12, N'KING SIZE ROOM', N'size 51-100 m2', CAST(80000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:28:41.447' AS DateTime), N'Raju', NULL, NULL, 3)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (13, N'KING SIZE ROOM', N'size 51-100 m2', CAST(90000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:28:47.970' AS DateTime), N'Raju', NULL, NULL, 4)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (14, N'KING SIZE ROOM', N'size 51-100 m2', CAST(100000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:29:12.830' AS DateTime), N'Raju', NULL, NULL, 6)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (15, N'KING SIZE ROOM', N'size 51-100 m2', CAST(80000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:29:21.497' AS DateTime), N'Raju', NULL, NULL, 7)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (16, N'KING SIZE ROOM', N'size 51-100 m2', CAST(85000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:29:29.530' AS DateTime), N'Raju', NULL, NULL, 8)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (17, N'KING SIZE ROOM', N'size 51-100 m2', CAST(90000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:29:35.510' AS DateTime), N'Raju', NULL, NULL, 9)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (18, N'Sweet', N'size 36-50 m2', CAST(9000 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:09.613' AS DateTime), N'Raju', NULL, NULL, 3)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (19, N'Sweet', N'size 36-50 m2', CAST(9500 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:20.520' AS DateTime), N'Raju', NULL, NULL, 4)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (20, N'Sweet', N'size 36-50 m2', CAST(9300 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:27.933' AS DateTime), N'Raju', NULL, NULL, 5)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (21, N'Sweet', N'size 36-50 m2', CAST(7300 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:34.617' AS DateTime), N'Raju', NULL, NULL, 6)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (22, N'Sweet', N'size 36-50 m2', CAST(4300 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:40.507' AS DateTime), N'Raju', NULL, NULL, 7)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (23, N'Sweet', N'size 36-50 m2', CAST(7300 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:46.873' AS DateTime), N'Raju', NULL, NULL, 8)
INSERT [dbo].[Rooms] ([Id], [RoomName], [RoomCategory], [RoomPrice], [IsActive], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [HotelId]) VALUES (24, N'Sweet', N'size 36-50 m2', CAST(6300 AS Numeric(18, 0)), N'Y', CAST(N'2021-01-11T15:32:52.417' AS DateTime), N'Raju', NULL, NULL, 9)
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Hotel Management System] SET  READ_WRITE 
GO
