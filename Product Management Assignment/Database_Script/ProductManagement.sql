USE [ProductManagement]
GO
/****** Object:  Table [dbo].[LoginReg]    Script Date: 07-01-2021 12:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginReg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LoginReg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductL]    Script Date: 07-01-2021 12:58:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[Price] [varchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ShortDescription] [varchar](150) NOT NULL,
	[LongDescription] [varchar](max) NULL,
	[SmallImage] [varchar](max) NOT NULL,
	[LargeImage] [varchar](max) NULL,
 CONSTRAINT [PK_ProductL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginReg] ON 

INSERT [dbo].[LoginReg] ([Id], [FirstName], [LastName], [Email], [Password]) VALUES (1, N'Muhammed', N'Teli', N'aaditeli2@gmail.com', N'007')
SET IDENTITY_INSERT [dbo].[LoginReg] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductL] ON 

INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (21, N'T-Shirt', N'Shirt', N'230', 1, N'Casual Shirt', N'Informal wear', N'~/Images/SmallImg/Shirt190507647.jpg', N'~/Images/LargeImg/GRAFANA190306678.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (22, N'Orange', N'Fruit', N'70', 3, N'Orange Fruit', N'Rich in Vitamin C', N'~/Images/SmallImg/Orange190723204.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (25, N'TV set', N'Electronics', N'11000', 1, N'TV set ', N'sony bravia', N'~/Images/SmallImg/images192950827.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (26, N'Smart Phone', N'Electronics', N'5000', 1, N'RedMi Note 5', N'Smart Phone', N'~/Images/SmallImg/SmartPhone193101902.jpg', N'~/Images/LargeImg/SmartPhone1193101907.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (27, N'Watch for men', N'Watches', N'600', 2, N'Wrist watch ', N'Gents watch', N'~/Images/SmallImg/watch3193158799.jpg', N'~/Images/LargeImg/watch193158807.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (30, N'Formal shirt', N'Shirt', N'550', 2, N'office wear', N'NA', N'~/Images/SmallImg/Formal Shirt193421037.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (33, N'Sunglasses', N'Eyewear', N'300', 2, N'Fashion glasses', N'Protect eyes from sunlight', N'~/Images/SmallImg/sunglasses1193850427.jpg', N'~/Images/LargeImg/Sunglasses193850434.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (34, N'Spectacles', N'Eyewear', N'600', 2, N'Rimless Frames', N'UV protection', N'~/Images/SmallImg/Spectacle193940554.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (35, N'Potato', N'Vegetables', N'20', 1, N'Potato vegetable', N'Good in vitamins', N'~/Images/SmallImg/potato1194024336.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (37, N'Kurta Payjama', N'Shirt', N'500', 2, N'Kurta Payjama for men', N'NA', N'~/Images/SmallImg/kurta191918492.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (39, N'Kurta', N'Shirt', N'350', 1, N'Kurta for men', N'NA', N'~/Images/SmallImg/kurta2191846778.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (41, N'Kurta', N'Clothes', N'700', 2, N'Kurta for men', N'NA', N'~/Images/SmallImg/kurta195756437.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (45, N'Formal Shoes', N'Footwear', N'450', 2, N'office wear shoes', N'NA', N'~/Images/SmallImg/shoes1190124351.jpg', N'~/Images/LargeImg/shoes190124358.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (47, N'Juicer', N'Electronics', N'2500', 1, N'Juicer for home ', N'Used for fruit juice ', N'~/Images/SmallImg/juicer1194547305.jpg', N'~/Images/LargeImg/juicer194547313.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (48, N'Philips Bulb', N'Electronics', N'70', 2, N'LED Bulb', N'High Intensity', N'~/Images/SmallImg/bulb192043020.jpg', N'~/Images/LargeImg/bulb1195809750.jpg')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (51, N'Dryfruit', N'Food', N'550', 2, N'Indian Almonds', N'Good in vitamin E', N'~/Images/SmallImg/almond194836565.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (53, N'Mixer', N'Electronics', N'2500', 1, N'550 W Mixer', N'NA', N'~/Images/SmallImg/mixer203219965.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (54, N'Water glass', N'Home Utensils', N'200', 2, N'Glass for drinking water', N'NA', N'~/Images/SmallImg/Glass203944121.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (55, N'hp Laptop', N'Electronics', N'48000', 1, N'HP Pavilion laptop', N'1 TB HDD, @ Gb Graphics card', N'~/Images/SmallImg/Laptop205420933.jpg', N'NA')
INSERT [dbo].[ProductL] ([Id], [ProductName], [Category], [Price], [Quantity], [ShortDescription], [LongDescription], [SmallImage], [LargeImage]) VALUES (56, N'T Shirt', N'Clothes', N'500', 3, N'Casual T Shirt', N'NA', N'~/Images/SmallImg/T Shirt205629242.jpg', N'NA')
SET IDENTITY_INSERT [dbo].[ProductL] OFF
GO
