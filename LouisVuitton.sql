USE [LouisVuitton]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[user_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genders]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_details](
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[discount] [float] NULL,
	[total_price] [float] NULL,
	[name] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[total_price] [float] NULL,
	[total_product] [int] NULL,
	[status] [nvarchar](50) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[name] [nvarchar](255) NULL,
	[phone] [varchar](20) NULL,
	[address] [nvarchar](255) NULL,
	[comments] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_gender]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_gender](
	[product_id] [int] NOT NULL,
	[gender_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_sizes]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_sizes](
	[product_id] [int] NOT NULL,
	[size_id] [int] NOT NULL,
	[stock_quantity] [int] NULL,
	[total_sold] [int] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[category_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](1000) NULL,
	[sub_description] [nvarchar](1000) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [int] NULL,
	[hot] [int] NULL,
	[total_ratings] [int] NULL,
	[total_stars] [int] NULL,
	[stock_quantity] [int] NULL,
	[total_sold] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[hover_avatar] [nvarchar](255) NULL,
	[price] [float] NULL,
	[sale] [float] NULL,
	[total_pay] [float] NULL,
	[tag] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_images]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_images](
	[product_id] [int] NULL,
	[path] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[description] [text] NULL,
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[number_starts] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_rating] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sizes]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/13/2025 7:00:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[role] [varchar](50) NOT NULL,
	[name] [nvarchar](255) NULL,
	[reset_token] [nvarchar](255) NULL,
	[token_expiry] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (2, N'Carry bag', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (3, N'Shoes', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (4, N'Jewelry', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (5, N'Dress', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (6, N'Trouser', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (7, N'Shirt', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (8, N'Jacket', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (9, N'Hat', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (10, N'Watch', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (12, N'Belt', 1, CAST(N'2025-02-18T09:52:44.653' AS DateTime), CAST(N'2025-02-18T09:52:44.653' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[genders] ON 

INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (1, N'Women', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (2, N'Men', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[genders] OFF
GO
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-13T12:52:03.097' AS DateTime), CAST(N'2025-03-13T12:52:03.097' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 12, 270, 1, 81, 189, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-13T12:52:03.100' AS DateTime), CAST(N'2025-03-13T12:52:03.100' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 13, 120.5, 1, 0, 120.5, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-13T12:52:03.100' AS DateTime), CAST(N'2025-03-13T12:52:03.100' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 14, 119.4, 1, 0, 119.4, N'Damier Leather Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', N'Pending', CAST(N'2025-03-13T12:52:03.100' AS DateTime), CAST(N'2025-03-13T12:52:03.100' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (20, 65, 40.25, 1, 0, 40.25, N'Classic Fedora Hat', N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(5).avif', N'Pending', CAST(N'2025-03-13T17:04:29.570' AS DateTime), CAST(N'2025-03-13T17:04:29.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (20, 66, 39, 1, 0, 39, N'Sports Performance Cap', N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(2).avif', N'Pending', CAST(N'2025-03-13T17:04:29.573' AS DateTime), CAST(N'2025-03-13T17:04:29.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (23, 12, 270, 1, 0, 270, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-13T17:20:11.407' AS DateTime), CAST(N'2025-03-13T17:20:11.407' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-12T20:13:30.480' AS DateTime), CAST(N'2025-03-12T20:13:30.480' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 13, 120.5, 1, 0, 120.5, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-12T20:13:30.483' AS DateTime), CAST(N'2025-03-12T20:13:30.483' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 18, 140.99, 1, 0, 140.99, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', N'Pending', CAST(N'2025-03-12T20:13:30.483' AS DateTime), CAST(N'2025-03-12T20:13:30.483' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 29, 29.99, 1, 0, 29.99, N'Classic Cotton Baseball Cap', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', N'Pending', CAST(N'2025-03-12T20:13:30.483' AS DateTime), CAST(N'2025-03-12T20:13:30.483' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 13, 120.5, 2, 0, 241, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-12T23:12:09.267' AS DateTime), CAST(N'2025-03-12T23:12:09.267' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 12, 270, 2, 81, 378, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-12T23:12:09.267' AS DateTime), CAST(N'2025-03-12T23:12:09.267' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 14, 119.4, 3, 0, 358.20000000000005, N'Damier Leather Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', N'Pending', CAST(N'2025-03-12T23:12:09.267' AS DateTime), CAST(N'2025-03-12T23:12:09.267' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-12T23:12:09.270' AS DateTime), CAST(N'2025-03-12T23:12:09.270' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 13, 120.5, 2, 0, 241, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-12T23:18:17.157' AS DateTime), CAST(N'2025-03-12T23:18:17.157' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 12, 270, 2, 81, 378, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-12T23:18:17.160' AS DateTime), CAST(N'2025-03-12T23:18:17.160' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 14, 119.4, 3, 0, 358.2, N'Damier Leather Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', N'Pending', CAST(N'2025-03-12T23:18:17.160' AS DateTime), CAST(N'2025-03-12T23:18:17.160' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-12T23:18:17.160' AS DateTime), CAST(N'2025-03-12T23:18:17.160' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 13, 120.5, 1, 0, 120.5, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-13T00:47:30.233' AS DateTime), CAST(N'2025-03-13T00:47:30.233' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 14, 119.4, 1, 0, 119.4, N'Damier Leather Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', N'Pending', CAST(N'2025-03-13T00:47:30.237' AS DateTime), CAST(N'2025-03-13T00:47:30.237' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 17, 120.67, 1, 0, 120.67, N'Footprint Soccer White', N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', N'Pending', CAST(N'2025-03-13T00:47:30.237' AS DateTime), CAST(N'2025-03-13T00:47:30.237' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 18, 140.99, 1, 0, 140.99, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', N'Pending', CAST(N'2025-03-13T00:47:30.240' AS DateTime), CAST(N'2025-03-13T00:47:30.240' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 16, 100.5, 1, 0, 100.5, N'Orange Shirt', N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', N'Pending', CAST(N'2025-03-13T00:47:30.240' AS DateTime), CAST(N'2025-03-13T00:47:30.240' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 12, 270, 1, 81, 189, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-13T00:47:30.240' AS DateTime), CAST(N'2025-03-13T00:47:30.240' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (19, 13, 120.5, 1, 0, 120.5, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-13T16:51:27.100' AS DateTime), CAST(N'2025-03-13T16:51:27.100' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (19, 14, 119.4, 1, 0, 119.4, N'Damier Leather Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', N'Pending', CAST(N'2025-03-13T16:51:27.103' AS DateTime), CAST(N'2025-03-13T16:51:27.103' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (21, 16, 100.5, 1, 0, 100.5, N'Orange Shirt', N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', N'Pending', CAST(N'2025-03-13T17:13:49.433' AS DateTime), CAST(N'2025-03-13T17:13:49.433' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (21, 17, 120.67, 1, 0, 120.67, N'Footprint Soccer White', N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', N'Pending', CAST(N'2025-03-13T17:13:49.437' AS DateTime), CAST(N'2025-03-13T17:13:49.437' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (21, 18, 140.99, 1, 0, 140.99, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', N'Pending', CAST(N'2025-03-13T17:13:49.437' AS DateTime), CAST(N'2025-03-13T17:13:49.437' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (22, 12, 270, 1, 0, 270, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-13T17:15:29.690' AS DateTime), CAST(N'2025-03-13T17:15:29.690' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (24, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-13T17:21:37.390' AS DateTime), CAST(N'2025-03-13T17:21:37.390' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (25, 13, 120.5, 1, 0, 120.5, N'Damier Varsity Blouson', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', N'Pending', CAST(N'2025-03-13T17:22:34.647' AS DateTime), CAST(N'2025-03-13T17:22:34.647' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (26, 12, 270, 1, 0, 270, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-13T17:29:53.897' AS DateTime), CAST(N'2025-03-13T17:29:53.897' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (14, 6, 571.48, 4, N'Delivered', CAST(N'2025-03-12T20:13:03.0000000' AS DateTime2), CAST(N'2025-03-12T20:13:03.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'PLease send quick as soon as possible.')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (15, 6, 1419.2, 4, N'Pending', CAST(N'2025-03-12T23:12:09.0000000' AS DateTime2), CAST(N'2025-03-12T23:12:09.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'Viet test mua hang !!!!!!')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (16, 6, 1419.2, 4, N'Canceled', CAST(N'2025-03-12T23:18:17.0000000' AS DateTime2), CAST(N'2025-03-12T23:18:17.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'Giao nhanh giup em voi a')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (17, 6, 872.06, 6, N'Canceled', CAST(N'2025-03-13T00:47:30.0000000' AS DateTime2), CAST(N'2025-03-13T00:47:30.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'Beautifull')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (18, 6, 789.9, 4, N'Canceled', CAST(N'2025-03-13T12:52:03.0000000' AS DateTime2), CAST(N'2025-03-13T12:52:03.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'Test')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (19, 6, 239.9, 2, N'Pending', CAST(N'2025-03-13T16:51:27.0000000' AS DateTime2), CAST(N'2025-03-13T16:51:27.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'12345')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (20, 6, 79.25, 2, N'Pending', CAST(N'2025-03-13T17:04:30.0000000' AS DateTime2), CAST(N'2025-03-13T17:04:30.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'OKKKKK')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (21, 6, 362.16, 3, N'Pending', CAST(N'2025-03-13T17:13:49.0000000' AS DateTime2), CAST(N'2025-03-13T17:13:49.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (22, 6, 270, 1, N'Canceled', CAST(N'2025-03-13T17:15:30.0000000' AS DateTime2), CAST(N'2025-03-13T17:15:30.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (23, 6, 270, 1, N'Pending', CAST(N'2025-03-13T17:20:11.0000000' AS DateTime2), CAST(N'2025-03-13T17:20:11.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (24, 6, 280, 1, N'Pending', CAST(N'2025-03-13T17:21:37.0000000' AS DateTime2), CAST(N'2025-03-13T17:21:37.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (25, 6, 120.5, 1, N'Pending', CAST(N'2025-03-13T17:22:35.0000000' AS DateTime2), CAST(N'2025-03-13T17:22:35.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (26, 6, 270, 1, N'Pending', CAST(N'2025-03-13T17:29:54.0000000' AS DateTime2), CAST(N'2025-03-13T17:29:54.0000000' AS DateTime2), N'Nhu Xuan Viet', N'0345004504', N'Hai Duong', N'okkkkkkkkkk')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (11, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (12, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (13, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (14, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (15, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (16, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (17, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (18, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (19, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (20, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (21, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (21, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (22, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (22, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (23, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (23, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (24, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (24, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (25, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (26, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (27, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (28, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (29, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (30, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (31, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (32, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (33, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (34, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (35, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (36, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (37, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (38, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (39, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (40, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (41, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (42, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (43, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (44, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (45, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (46, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (47, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (48, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (49, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (50, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (51, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (52, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (53, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (54, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (55, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (56, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (57, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (58, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (59, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (60, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (61, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (62, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (63, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (64, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (65, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (66, 1)
GO
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 1, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 3, 9, 1, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 4, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 5, 9, 1, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 2, 3, 7, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 3, 9, 1, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 4, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 5, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 1, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 3, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 4, 1, 9, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 5, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 1, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 2, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 3, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 4, 2, 8, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 5, 6, 4, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 20, 9, 1, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 21, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 22, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 23, 6, 4, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 24, 1, 9, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 20, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 21, 6, 4, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 22, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 23, 9, 1, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 24, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 1, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 2, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 3, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 4, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 2, 5, 5, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 3, 8, 2, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 5, 1, 9, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (25, 1, 2, 3, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (25, 2, 4, 1, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (25, 3, 5, 2, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (25, 4, 10, 9, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (25, 5, 3, 2, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (26, 1, 1, 4, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (26, 2, 4, 1, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (26, 3, 3, 2, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (26, 4, 2, 3, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (26, 5, 2, 3, CAST(N'2025-02-24T23:58:35.677' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (33, 1, 5, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (33, 2, 2, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (33, 3, 2, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (33, 4, 7, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (33, 5, 8, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (34, 1, 6, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (34, 2, 23, 12, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (34, 3, 5, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (34, 4, 4, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (34, 5, 3, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (35, 16, 8, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (35, 17, 4, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (35, 18, 3, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (35, 19, 2, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (35, 20, 1, 9, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (36, 16, 8, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (36, 17, 8, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (36, 18, 10, 0, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (36, 19, 7, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (36, 20, 10, 0, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (37, 1, 5, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (37, 2, 9, 1, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (37, 3, 9, 1, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (37, 4, 7, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (37, 5, 5, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (38, 1, 5, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (38, 2, 4, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (38, 3, 8, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (38, 4, 10, 0, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (38, 5, 6, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (39, 1, 5, 5, CAST(N'2025-03-09T16:15:51.527' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (39, 2, 4, 6, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (39, 3, 8, 2, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (39, 4, 10, 0, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (39, 5, 6, 4, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (40, 1, 5, 5, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (40, 2, 4, 6, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (40, 3, 8, 2, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (40, 4, 10, 0, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (40, 5, 6, 4, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (41, 1, 5, 5, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (41, 2, 4, 6, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (41, 3, 8, 2, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (41, 4, 10, 0, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (41, 5, 6, 4, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (42, 1, 5, 5, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (42, 2, 4, 6, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (42, 3, 8, 2, CAST(N'2025-03-09T16:15:51.530' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (42, 4, 10, 0, CAST(N'2025-03-09T16:15:51.533' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (42, 5, 6, 4, CAST(N'2025-03-09T16:15:51.533' AS DateTime))
GO
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (47, 16, 10, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (47, 17, 6, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (47, 18, 5, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (47, 19, 3, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (47, 20, 2, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (48, 16, 12, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (48, 17, 8, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (48, 18, 6, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (48, 19, 4, 9, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (48, 20, 3, 10, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (49, 16, 15, 1, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (49, 17, 10, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (49, 18, 8, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (49, 19, 5, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (49, 20, 4, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (50, 16, 18, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (50, 17, 12, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (50, 18, 9, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (50, 19, 6, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (50, 20, 5, 9, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (51, 1, 8, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (51, 2, 7, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (51, 3, 6, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (51, 4, 5, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (51, 5, 4, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (52, 1, 10, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (52, 2, 9, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (52, 3, 7, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (52, 4, 6, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (52, 5, 5, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (53, 1, 12, 1, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (53, 2, 10, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (53, 3, 9, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (53, 4, 8, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (53, 5, 6, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (54, 1, 14, 0, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (54, 2, 12, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (54, 3, 10, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (54, 4, 8, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (54, 5, 7, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (59, 1, 10, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (59, 2, 8, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (59, 3, 6, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (59, 4, 7, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (59, 5, 5, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (60, 1, 9, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (60, 2, 7, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (60, 3, 5, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (60, 4, 6, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (60, 5, 4, 7, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (61, 1, 12, 1, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (61, 2, 10, 3, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (61, 3, 8, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (61, 4, 9, 5, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (61, 5, 6, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (62, 1, 15, 2, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (62, 2, 12, 4, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (62, 3, 9, 6, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (62, 4, 7, 8, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (62, 5, 5, 10, CAST(N'2025-02-25T22:13:53.970' AS DateTime))
GO
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (11, 12, N'LV Initiales 40mm Reversible Belt', N'The Louis Vuitton LV Initiales 40mm Reversible Belt is a sophisticated and versatile accessory, blending luxury with practicality. Designed with a reversible strap, it offers two distinct looks in one – featuring the iconic Monogram canvas on one side and premium calf leather on the other. The bold LV Initiales buckle serves as a statement piece, available in various finishes like silver-tone, gold-tone, and dark ruthenium. With a width of 40mm, this belt seamlessly complements both casual and formal outfits.', N'Material: Monogram canvas & calf leather$
			Width: 40mm$
			Buckle: LV Initiales buckle in different finishes$
			Reversible: Two wearable sides for versatility$
			Style: Perfect for casual and formal wear$
			Available Colors: Black, brown, tan, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(1).png', 1, 0, 0, 0, 14, 6, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', 280, 0, 280, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (12, 12, N'LV Fiction 30mm Reversible Belt', N'The Louis Vuitton LV Fiction 30mm Reversible Belt is a refined statement piece inspired by the brands rich travel heritage. Featuring an elegant LV Fiction buckle, this belt showcases a unique oval design engraved with fine lines reminiscent of a world map. With a reversible strap, one side offers classic smooth leather, while the other features embossed Monogram canvas, allowing for versatile styling. The 30mm width ensures a sleek, modern look, perfect for both casual and formal ensembles.', N'Material: Smooth leather & embossed Monogram canvas
			Width: 30mm
			Buckle: Oval LV Fiction buckle in gold-tone or silver-tone
			Reversible: Two wearable styles for versatile looks
			Style: Ideal for formal and everyday wear
			Available Colors: Brown, black, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(3).png', 1, 0, 0, 0, 12, 8, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', 270, 30, 900, N'30%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (13, 8, N'Damier Varsity Blouson', N'The Louis Vuitton Damier Varsity Blouson is a bold fusion of luxury and contemporary streetwear. Featuring the iconic Damier Buffalo plaid pattern in striking red and black, this jacket blends Western influences with the classic varsity silhouette. Crafted from premium wool jacquard, it offers warmth, durability, and effortless style. Ribbed cuffs, hem, and a button-up closure add a sporty touch, making this piece a standout in any modern wardrobe.', N'Material: High-quality wool jacquard
Pattern: Damier Buffalo plaid in red and black
Closure: Button-up front
Details: Ribbed cuffs and hem for a varsity-style fit
Style: A blend of luxury and casual streetwear
Collection: Part of the Fall-Winter 2024 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 120.5, 0, 120.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (14, 8, N'Damier Leather Blouson', N'The Louis Vuitton Damier Leather Blouson is a luxurious reinterpretation of the iconic Damier pattern, blending premium craftsmanship with contemporary design. Crafted from softly grained leather, this jacket features the striking LV Vers Damier motif, enhanced with a hand-painted effect in bold primary colors. Signature "Marque L. Vuitton Deposee" branding subtly integrates into the pattern, adding an exclusive touch. This statement piece is designed for those who appreciate high-fashion aesthetics combined with timeless quality.', N'Material: Softly grained premium leather
Pattern: LV Vers Damier motif with a hand-painted effect
Branding: "Marque L. Vuitton Deposee" signature details
Closure: Full front zip
Style: A fusion of luxury, artistry, and modern fashion
Collection: Part of the Spring-Summer 2025 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', 1, 0, 0, 0, 35, 15, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Jacket/jacket_men(2.1).png', 119.4, 0, 119.4, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (15, 7, N'Printed Short-Sleeved Silk Shirt', N'The Louis Vuitton Printed Short-Sleeved Silk Shirt is a statement piece that blends luxury with bold artistry. Made from 100% premium silk, this lightweight shirt offers a smooth and breathable feel, perfect for warm-weather styling. The vibrant Monogram and graphic prints add a modern, eye-catching touch, drawing inspiration from sailing motifs, vintage scarves, or tropical landscapes. With a relaxed fit, an open camp collar, and a button-up front, this piece is designed for both casual elegance and effortless sophistication.', N'Material: 100% pure silk, made in Italy
Design: Unique Monogram and graphic prints inspired by Louis Vuitton’s signature themes
Fit: Relaxed, short-sleeved silhouette with an open camp collar
Details: Button-up closure, lightweight feel, luxurious craftsmanship
Style: Perfect for casual outings, vacations, or layering for a high-fashion look
Collection: Part of Louis Vuitton’s seasonal ready-to-wear line', N'assets/images/clothes/images/Men/Shirt/shirt_men(1).png', 1, 0, 0, 0, 29, 21, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Shirt/shirt_men(1.1).png', 290.56, 0, 290.56, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (16, 7, N'Orange Shirt', N'The Orange Shirt is a stylish and vibrant wardrobe essential, perfect for adding a pop of color to any outfit. Crafted from high-quality fabric, it offers a comfortable fit with a breathable and lightweight feel. The classic button-up design and structured collar make it versatile for both casual and formal occasions. Whether paired with tailored trousers for a polished look or worn casually with jeans, this shirt delivers effortless elegance.', N'Material: Premium cotton, linen, or silk options available
Color: Bold and vibrant orange for a standout look
Design: Classic button-up with a structured collar
Fit: Regular or slim fit, depending on style preference
Style: Ideal for casual, business, or evening wear
Care: Easy maintenance with machine or hand wash options', N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', 1, 0, 0, 0, 32, 18, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Shirt/shirt_men(2.1).png', 100.5, 0, 100.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (17, 3, N'Footprint Soccer White', N'The LV Footprint Soccer White is a luxury sneaker from Louis Vuitton, inspired by classic soccer footwear and reimagined with high-fashion aesthetics. Crafted from premium white calf leather, it offers a sleek, sophisticated look while maintaining superior comfort. The "LVers United" logo on the tongue and the signature rubber outsole feature unique Louis Vuitton detailing, symbolizing unity and global connectivity—perfectly aligning with the theme of the Spring-Summer 2025 collection.', N'Material: High-quality white calf leather
Design: A fusion of classic soccer cleat elements with a modern luxury twist
Special Features: "LVers United" logo on the tongue; signature Louis Vuitton rubber outsole details
Color: Crisp white, versatile for various outfits
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', 1, 0, 0, 0, 32, 18, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Shoes/shoes_men(1.3).png', 120.67, 0, 120.67, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (18, 3, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'Designed by Virgil Abloh, the Louis Vuitton LV Trainer "Blue" is a fashion icon inspired by vintage basketball sneakers. This edition stands out with a unique combination of Monogram denim fabric and embossed Monogram calf leather, creating a refined contrast. Each pair takes 7 hours of meticulous hand-stitching, showcasing the brand’s commitment to craftsmanship and luxury.', N'Material: Monogram denim fabric combined with embossed Monogram calf leather
Design: A blend of classic basketball sneaker aesthetics with modern luxury elements
Special Features: LV logo on the tongue, side, and heel; "Vuitton" signature on the side; Monogram flower details on the outsole
Sole: Durable rubber outsole with Monogram flower motifs for superior grip
Manufacturing: Handmade in Italy', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', 1, 0, 0, 0, 36, 14, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Shoes/shoes_men(3.4).png', 140.99, 0, 140.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (19, 6, N'Damier Denim Wide-Leg Pants', N'The Louis Vuitton Damier Denim Wide-Leg Pants are a standout piece from the Spring-Summer 2025 collection, blending classic design with contemporary flair. Crafted from 100% organic washed denim, these pants feature the seasons distinctive LV Vers Damier motif in vibrant primary colors, inspired by the flags adorning the UNESCO rooftop garden during the collections showcase. The wide-leg silhouette offers a relaxed yet stylish fit, making it a versatile addition to any wardrobe. ', N'Material: 100% organic washed denim
Design: Wide-leg cut with the LV Vers Damier motif in primary colors
Details: Marque L. Vuitton Déposée signatures, nubuck Damier jacqueron at the back, and pearl-effect rivets in an old gold setting
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Trouser/trouser_men(1).png', 1, 0, 0, 0, 39, 11, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Trouser/trouser_men(1.1).png', 280.45, 10, 2804.5, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (20, 6, N'Damier Flared Denim Pants', N'The Louis Vuitton Damier Flared Denim Pants combine timeless elegance with contemporary flair. Crafted from premium Japanese denim, these pants feature the iconic Damier pattern woven directly into the fabric for a textured, luxurious feel. The flared silhouette gives a stylish retro touch, elongating the legs for a sophisticated look. Subtle LV signatures on the back add an extra touch of exclusivity, making this piece a standout addition to any wardrobe.', N'Material: High-quality Japanese denim with woven Damier pattern
Design: Flared cut for a retro yet modern aesthetic
Details: Subtle LV signatures, refined stitching, and a structured waistband
Color: Classic blue denim with tonal variations for depth
Collection: Featured in Louis Vuitton’s seasonal ready-to-wear lineup', N'assets/images/clothes/images/Men/Trouser/trouser_men(2).png', 1, 0, 0, 0, 34, 16, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/Trouser/trouser_men(2.1).png', 267, 0, 267, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (21, 10, N'Louis Vuitton Escale Platinum 39mm – Automatic Haute Horology', N'The epitome of fine watchmaking, the Louis Vuitton Escale Platinum 39mm is an automatic masterpiece featuring a luxurious platinum case, exquisite craftsmanship, and a precision-engineered movement for the most discerning collectors.', N'Movement: Automatic, self-winding mechanism
Case: Solid Platinum
Diameter: 39mm
Crystal: Scratch-resistant Sapphire
Strap: Premium leather with an adjustable clasp', N'assets/images/clothes/images/Watch/watch(1).png', 1, 1, 0, 0, 16, 34, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(1.4).avif', 35.5, 0, 35.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (22, 10, N'Louis Vuitton Tambour Carpe Diem 39mm – Rose Gold Edition', N'A symbol of timeless elegance, the Louis Vuitton Tambour Carpe Diem in 39mm combines a rose gold case, a sophisticated two-tone dial, and a luxurious black leather strap. A masterpiece of craftsmanship, this watch is the perfect blend of heritage and modernity.', N'Movement: Swiss Automatic
Case: 18k Rose Gold
Diameter: 39mm
Crystal: Sapphire, scratch-resistant
Strap: Black leather, adjustable clasp', N'assets/images/clothes/images/Watch/watch(2).png', 1, 0, 0, 0, 47, 3, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(2.2).jpg', 475, 0, 475, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (23, 10, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'The Louis Vuitton Tambour Steel Blue 40mm is a modern expression of fine watchmaking. Featuring a stainless steel case, a deep blue dial, and a precision automatic movement, this timepiece is the perfect blend of sophistication and functionality.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(3).png', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(3.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (24, 10, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'The Louis Vuitton Tambour Steel Grey 40mm represents a perfect blend of modern design and luxury craftsmanship. Featuring a sleek stainless steel case, a sophisticated grey dial, and Swiss automatic movement, this timepiece is the epitome of elegance and precision.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(4).png', 1, 0, 0, 0, 41, 9, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(4.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (25, 5, N'Louis Vuitton Monogram Silk Shirt Dress', N'A sophisticated blend of elegance and comfort, the Louis Vuitton Monogram Silk Shirt Dress features an iconic navy monogram print on luxurious silk fabric, accented with a contrasting white vertical stripe and a stylish bow collar.', N'Material: 100% Silk
Print: Louis Vuitton Monogram
Length: Full-length
Closure: Button-down front
Collar: Bow tie detail', N'assets/images/clothes/images/Women/dress1/dress(1)/dess(3).avif', 1, 0, 0, 0, 24, 17, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(1)/dess(2).avif', 4.8, 0, 4.8, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (26, 5, N'Louis Vuitton Monogram Sleeveless Polo Dress', N'A chic and sporty take on luxury fashion, the Louis Vuitton Monogram Sleeveless Polo Dress features the classic monogram print on a sleek, fitted silhouette. The contrasting black collar and gold zip closure add a refined, contemporary touch.', N'Material: Premium Cotton Blend
Print: Louis Vuitton Monogram
Fit: Slim-fit, knee-length
Closure: Gold-tone zipper at the neckline
Collar: Contrasting black polo-style', N'assets/images/clothes/images/Women/dress1/dress(2)/dess(2).avif', 1, 0, 0, 0, 12, 13, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(2)/dess(1).avif', 3.2, 0, 3.2, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (27, 2, N'Elegant Leather Handbag', N'Elevate your style with this premium leather handbag, designed for modern elegance and functionality. Crafted from high-quality materials, this bag combines sophistication with practicality, making it a perfect companion for work, travel, or special occasions.', N'Material: High-quality genuine leather with a smooth and luxurious finish.
Lining: Soft fabric lining to protect your belongings.
Compartments: Spacious main compartment with multiple interior pockets for organized storage.
Closure: Secure zippered closure to keep your essentials safe.
Straps: Adjustable and detachable shoulder strap for versatile carrying options.
Hardware: Gold-tone metal accents for a sophisticated touch.
Dimensions: (Provide actual size here, e.g., 30cm x 25cm x 12cm)', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(5).avif', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(2).avif', 89.99, 0, 89.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (28, 2, N'Luxe Classic Leather Handbag', N'A sophisticated and timeless leather handbag designed for elegance and practicality. Perfect for work, travel, or special occasions, this bag offers both style and functionality.', N'Material: Premium genuine leather with a smooth, high-quality finish.
Lining: Soft fabric lining for added durability and protection.
Compartments: Spacious main compartment with multiple pockets for organization.
Closure: Secure zipper closure to keep your essentials safe.
Straps: Comfortable top handles and an adjustable, detachable shoulder strap for versatility.
Hardware: Gold-tone metal accents for a luxurious touch.
Dimensions: (Provide actual size here, e.g., 32cm x 28cm x 14cm)', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', 100, 0, 100, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (29, 9, N'Classic Cotton Baseball Cap', N'A stylish and versatile baseball cap designed for everyday wear. Made from high-quality materials, this cap offers comfort, durability, and a timeless look, perfect for casual outings or outdoor activities.', N'Material: Premium cotton fabric for breathability and all-day comfort.
Closure: Adjustable strap for a customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added comfort.
Brim: Curved brim for sun protection and a stylish appearance.', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', 1, 1, 0, 0, 5, 45, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', 29.99, 0, 29.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (30, 9, N'Premium Cotton Dad Hat', N' A comfortable and stylish dad hat designed for everyday wear. Made from soft, breathable cotton, this hat provides a relaxed fit and a classic look, perfect for casual outings, sports, or outdoor adventures.', N'Material: 100% high-quality cotton for maximum comfort.
Closure: Adjustable metal buckle strap for a secure and customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added durability and comfort.
Brim: Pre-curved brim for sun protection and a laid-back style.', N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', 1, 1, 0, 0, 20, 30, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', 24.99, 0, 24.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (31, 4, N'Elegant Gold-Plated Necklace', N' A stunning and timeless necklace designed to add elegance to any outfit. Crafted with high-quality materials, this piece is perfect for both everyday wear and special occasions.', N'Material: High-quality gold-plated stainless steel for durability and shine.
Design: Minimalist and elegant, suitable for layering or wearing alone.
Closure: Secure lobster clasp for easy wear.
Length: Adjustable chain for a perfect fit.
Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.', N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', 1, 0, 0, 0, 45, 5, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', 49.99, 0, 49.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (32, 4, N'Luxury Gold-Plated Bracelet', N' A beautifully crafted gold-plated bracelet designed to add a touch of sophistication and elegance to any outfit. Perfect for both everyday wear and special occasions, this piece is a must-have for jewelry lovers.', N'Material: Premium gold-plated stainless steel for durability and shine.
Design: Elegant and minimalist style, suitable for layering or wearing alone.
Closure: Secure clasp for a comfortable and adjustable fit.
Size: Available in multiple sizes for a perfect fit.
Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.', N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', 39.99, 0, 39.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (33, 7, N'Classic Cotton Button-Up Shirt', N'A timeless and versatile cotton button-up shirt, perfect for both casual and formal occasions. Designed for ultimate comfort and style, this shirt features a sleek, tailored fit with a breathable fabric that keeps you fresh all day.', N'Material: 100% premium cotton, soft and durable
Fit: Regular/slim fit with a structured collar
Features: Button-down front, long sleeves with adjustable cuffs, and a curved hem for a polished look
Colors: Available in multiple shades to suit your style
Care: Machine washable, easy to maintain', N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(4).avif', 1, 0, 0, 0, 24, 26, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(2).avif', 39.99, 0, 39.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (34, 7, N' Modern Casual Linen Shirt', N'Upgrade your wardrobe with this lightweight and breathable linen shirt, designed for effortless style and comfort. Perfect for warm weather, this shirt offers a relaxed fit and a minimalist look that pairs well with both casual and semi-formal outfits.', N'Material: 70% linen, 30% cotton for a soft, airy feel
Fit: Relaxed fit with a classic collar
Features: Button-up closure, long sleeves with roll-up option, and a slightly curved hem
Colors: Available in various neutral and pastel shades
Care: Machine washable on a gentle cycle, air dry recommended', N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(5).avif', 1, 1, 0, 0, 41, 34, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(4).avif', 44.99, 0, 44.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (35, 3, N'Urban Classic Leather Sneakers', N'Step into style with these sleek and durable leather sneakers, designed for both comfort and versatility. Whether youre heading to work, a night out, or a casual weekend stroll, these sneakers offer the perfect blend of sophistication and practicality.', N'Material: Premium genuine leather upper with a breathable mesh lining
Sole: Cushioned rubber sole for maximum comfort and grip
Fit: True to size with a lace-up closure for a secure fit
Features: Lightweight design, shock-absorbing insole, and anti-slip outsole
Colors: Available in classic black, white, and brown
Care: Wipe clean with a damp cloth, use leather conditioner for longevity', N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(9).avif', 1, 1, 0, 0, 18, 32, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(5).avif', 66.99, 0, 66.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (36, 3, N' SportFlex Running Sneakers', N'Designed for performance and everyday comfort, the SportFlex Running Sneakers provide superior cushioning and flexibility for an effortless stride. Whether youre hitting the gym, running errands, or going for a jog, these sneakers offer lightweight support and a modern, sporty look.', N'Material: Breathable mesh upper with synthetic overlays for durability
Sole: Lightweight EVA midsole with rubber outsole for traction
Fit: Snug, sock-like fit with lace-up closure for adjustable support
Features: Shock-absorbing technology, arch support, and moisture-wicking inner lining
Colors: Available in black, gray, and blue
Care: Spot clean with a damp cloth, air dry only', N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(5).avif', 1, 0, 0, 0, 43, 7, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(3).avif', 59.99, 30, 199.96666666666667, N'30%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (37, 6, N'Luxe Monogram Lounge Pants', N'Elevate your casual wear with these stylish monogram lounge pants, featuring a sophisticated all-over print for a luxurious yet relaxed look. Designed for all-day comfort, these pants are perfect for lounging at home or stepping out in effortless fashion.', N'Material: Premium cotton blend for a soft and breathable feel
Fit: Relaxed straight-leg cut with an elastic waistband for adjustable comfort
Features: Iconic monogram pattern, side pockets, and lightweight design
Colors: Classic white with black monogram print
Care: Machine washable on gentle cycle, tumble dry low', N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(5).jpg', 1, 0, 0, 0, 35, 15, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(1).jpg', 79.99, 0, 79.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (38, 6, N'Signature Print Relaxed Trousers', N'Upgrade your wardrobe with these stylish and comfortable printed trousers. Designed for both casual and semi-formal looks, these trousers feature a sleek all-over print that adds a touch of sophistication to any outfit. Perfect for lounging, streetwear, or pairing with a tailored top for a refined look.', N'Material: Premium cotton blend for a breathable and soft feel
Fit: Relaxed straight-leg cut with an elastic waistband for a flexible fit
Features: Elegant monogram pattern, side pockets, and lightweight fabric
Colors: White base with black designer-inspired print
Care: Machine washable on gentle cycle, do not bleach, air dry recommended', N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(5).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(4).avif', 84.99, 0, 84.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (39, 6, N'Casual Linen Wide-Leg Pants', N'Experience ultimate comfort and effortless style with these wide-leg linen pants. Crafted from a breathable fabric, they are perfect for warm weather and casual outings.', N'Material: 100% high-quality linen for a soft and airy feel  
Fit: Relaxed wide-leg silhouette with a drawstring waist for a customizable fit  
Features: Side pockets, lightweight design, and breathable fabric  
Colors: Available in beige, navy blue, and olive green  
Care: Machine washable on gentle cycle, tumble dry low or air dry', N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(1).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(5).avif', 69.99, 10, 699.89999999999986, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (40, 6, N'High-Waisted Pleated Trousers', N'A perfect blend of elegance and comfort, these high-waisted pleated trousers elevate your everyday style. Designed for versatility, they pair well with both casual and formal outfits.', N'Material: Premium polyester blend for a sleek and polished look  
Fit: High-waisted with a tailored pleated front  
Features: Side pockets, zip-fly closure, and a structured silhouette  
Colors: Available in black, gray, and camel  
Care: Dry clean recommended for best maintenance', N'assets/images/clothes/images/Women/trouser1/trouser(8)/trouser(3).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(8)/trouser(1).avif', 79.99, 15, 533.26666666666665, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (41, 6, N'Loose Fit Cargo Pants', N'Comfort meets functionality with these loose-fit cargo pants. Featuring multiple pockets and a relaxed silhouette, they are perfect for an urban, street-style look.', N'Material: Durable cotton blend for all-day comfort  
Fit: Relaxed loose fit with adjustable drawstring waist  
Features: Multiple utility pockets, elastic cuffs, and breathable fabric  
Colors: Available in khaki, army green, and black  
Care: Machine washable on gentle cycle, tumble dry low', N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(3).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(4).webp', 74.99, 0, 74.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (42, 6, N'Slim Fit Ankle-Length Trousers', N'Add a modern touch to your wardrobe with these slim-fit ankle-length trousers. Designed for versatility, they are perfect for both casual and office wear.', N'Material: Premium stretch cotton for a comfortable fit  
Fit: Slim fit with a cropped ankle-length design  
Features: Side pockets, zip-fly closure, and a sleek tapered look  
Colors: Available in navy blue, beige, and burgundy  
Care: Machine washable on gentle cycle, hang dry for best results', N'assets/images/clothes/images/Women/trouser1/trouser(7)/trouser(3).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/trouser1/trouser(7)/trouser(1).avif', 89.99, 0, 89.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (43, 2, N'Classic Leather Carry Bag', N'A stylish and spacious leather carry bag, perfect for everyday use. Designed with premium materials for durability and elegance.', N'Material: Genuine leather for a luxurious feel  
Capacity: Spacious interior with multiple compartments  
Features: Adjustable shoulder strap, secure zip closure, and reinforced handles  
Colors: Available in black, brown, and tan  
Care: Wipe clean with a damp cloth, use leather conditioner for maintenance', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', 1, 0, 0, 0, 30, 5, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(3).avif', 129.99, 0, 129.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (44, 2, N'Premium Leather Tote Bag', N'An elegant and functional leather tote bag, designed for both style and practicality. Ideal for daily use with a spacious interior and classic design.', N'Material: High-quality genuine leather for durability  
Capacity: Large interior with multiple compartments for easy organization  
Features: Comfortable shoulder straps, secure magnetic closure, and reinforced stitching  
Colors: Available in black, cognac, and deep red  
Care: Use a leather conditioner regularly, wipe clean with a soft cloth', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', 1, 0, 0, 0, 20, 4, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).avif', 139.99, 20, 699.95, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (45, 2, N'Elegant Minimalist Handbag', N'A sophisticated minimalist handbag designed for modern elegance and functionality. Perfect for both formal and casual occasions.', N'Material: Premium vegan leather for a sleek and durable finish  
Capacity: Compact yet spacious enough for essentials  
Features: Magnetic snap closure, detachable shoulder strap, and gold-tone hardware  
Colors: Available in nude pink, charcoal gray, and deep navy  
Care: Wipe clean with a damp cloth, avoid prolonged exposure to sunlight', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(1).avif', 1, 0, 0, 0, 25, 6, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(4).avif', 119.99, 15, 799.93333333333328, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (46, 2, N'Vintage Leather Shoulder Bag', N'A timeless leather shoulder bag designed for elegance and practicality. Perfect for work, travel, or everyday use.', N'Material: 100% genuine leather with a smooth, polished finish  
Capacity: Spacious enough for essentials, including a tablet and wallet  
Features: Adjustable shoulder strap, inner zip pocket, and secure flap closure  
Colors: Available in black, caramel brown, and deep burgundy  
Care: Use leather conditioner regularly, store in a dust bag when not in use', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(7).avif', 1, 0, 0, 0, 40, 8, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(5).avif', 139.99, 0, 139.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (47, 3, N'Classic Leather Loafers', N'Premium leather loafers designed for both style and comfort. Perfect for formal and casual occasions.', N'Material: High-quality genuine leather for durability and comfort  
Fit: Slip-on design with a cushioned insole for all-day wear  
Features: Non-slip rubber sole, breathable lining, and elegant stitching  
Colors: Available in black, brown, and navy  
Care: Wipe clean with a damp cloth, use leather polish for shine', N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (3).avif', 1, 0, 0, 0, 26, 27, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (6).avif', 99.99, 0, 99.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (48, 3, N'Elegant Leather Oxford Shoes', N'Experience timeless elegance with these classic leather Oxford shoes. Perfect for both formal and semi-formal occasions.', N'Material: Premium full-grain leather for durability and comfort  
Fit: True to size with a cushioned insole for all-day comfort  
Features: Lace-up closure, sleek design with brogue detailing  
Colors: Available in black, brown, and chestnut  
Care: Clean with a soft cloth, polish regularly for a lasting shine', N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(6).avif', 1, 1, 0, 0, 33, 34, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(3).avif', 150, 0, 150, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (49, 3, N'Casual Suede Loafers', N'Comfort meets style with these premium suede loafers, perfect for everyday wear.', N'Material: High-quality suede for a soft and stylish finish  
Fit: Comfortable slip-on design with a cushioned footbed  
Features: Lightweight, breathable, and flexible sole for all-day comfort  
Colors: Available in navy blue, taupe, and olive green  
Care: Use a suede brush to clean, avoid water exposure', N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(8).avif', 1, 0, 0, 0, 42, 22, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(5).avif', 120, 10, 1200, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (50, 3, N'Premium Leather Chelsea Boots', N'Upgrade your style with these sleek and durable leather Chelsea boots, perfect for any occasion.', N'Material: Genuine full-grain leather for a sophisticated look  
Fit: Elastic side panels for easy slip-on and a snug fit  
Features: Sturdy rubber outsole for traction and durability  
Colors: Available in black, espresso brown, and cognac  
Care: Use leather conditioner regularly, store in a cool, dry place', N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(4).avif', 1, 1, 0, 0, 50, 28, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(7).avif', 180, 10, 1800, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (51, 5, N'Elegant Satin Evening Dress', N'Look stunning at any special event with this luxurious satin evening dress.', N'Material: Premium satin fabric for a soft and elegant look  
Fit: Slim-fit design with a flowing silhouette  
Features: Sleeveless, deep V-neck, and concealed back zipper  
Colors: Available in royal blue, wine red, and emerald green  
Care: Dry clean only, avoid direct heat exposure', N'assets/images/clothes/images/Women/dress1/dress(3)/dress(2).avif', 1, 0, 0, 0, 30, 25, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(3)/dress(1).avif', 220, 15, 1466.6666666666667, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (52, 5, N'Chic Floral Maxi Dress', N'Embrace effortless elegance with this flowing floral maxi dress, perfect for any occasion.', N'Material: Lightweight chiffon fabric for a breathable and airy feel  
Fit: Relaxed fit with an adjustable waist tie  
Features: Short flutter sleeves, V-neck, and side slit for easy movement  
Colors: Available in blush pink, navy floral, and pastel green  
Care: Hand wash cold, hang to dry, avoid bleach', N'assets/images/clothes/images/Women/dress1/dress(4)/dress(3).avif', 1, 0, 0, 0, 37, 20, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(4)/dress(1).avif', 180, 0, 180, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (53, 5, N'Glamorous Velvet Bodycon Dress', N'Flaunt your curves with this stunning velvet bodycon dress, perfect for evening parties and special occasions.', N'Material: Soft velvet fabric for a luxurious feel  
Fit: Figure-hugging bodycon design with stretch  
Features: Long sleeves, high neckline, and knee-length cut  
Colors: Available in deep burgundy, midnight black, and forest green  
Care: Dry clean only, store folded to avoid creases', N'assets/images/clothes/images/Women/dress1/dress(5)/dress(3).avif', 1, 0, 0, 0, 45, 15, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(5)/dress(6).avif', 200, 15, 1333.3333333333333, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (54, 5, N'Graceful Chiffon Maxi Dress', N'Elegance meets comfort with this flowy chiffon maxi dress, perfect for summer evenings and beachside events.', N'Material: Lightweight chiffon for an airy and elegant feel  
Fit: Relaxed fit with a cinched waist for a flattering silhouette  
Features: Sleeveless, V-neckline, and a high-slit design  
Colors: Available in pastel pink, sky blue, and lavender  
Care: Hand wash cold, hang to dry', N'assets/images/clothes/images/Women/dress1/dress(19)/dress(4).avif', 1, 0, 0, 0, 51, 17, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/dress1/dress(19)/dress(1).webp', 190, 10, 1900, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (55, 4, N'Luxury Pearl Pendant Necklace', N'Add a touch of elegance to any outfit with this stunning pearl pendant necklace.', N'Material: High-quality freshwater pearl with a sterling silver chain  
Fit: Adjustable chain length for a perfect fit  
Features: Classic design with a timeless appeal  
Colors: Available in white pearl, rose gold, and silver  
Care: Avoid direct contact with water and perfume, store in a jewelry box', N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', 1, 0, 0, 0, 20, 3, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(1).avif', 120, 10, 1200, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (56, 4, N'Elegant Gold-Plated Bracelet', N'Enhance your style with this exquisite gold-plated bracelet, perfect for any occasion.', N'Material: Premium gold-plated sterling silver for a luxurious shine  
Fit: Adjustable chain with a secure clasp for a comfortable fit  
Features: Minimalist yet elegant design, suitable for layering  
Colors: Available in classic gold, rose gold, and silver  
Care: Avoid direct contact with water and chemicals, store in a jewelry pouch', N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', 1, 0, 0, 0, 20, 3, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(1).avif', 120, 0, 120, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (57, 4, N'Sterling Silver Infinity Ring', N'A timeless sterling silver ring with an elegant infinity design, perfect for any occasion.', N'Material: High-quality sterling silver for durability and shine  
Fit: Available in multiple sizes for a perfect fit  
Features: Elegant infinity symbol design, ideal for everyday wear or special occasions  
Colors: Available in silver, gold-plated, and rose gold  
Care: Avoid direct contact with water and chemicals, polish regularly with a soft cloth', N'assets/images/clothes/images/Women/jewelry1/jewelry(7)/jewelry(3).avif', 1, 0, 0, 0, 25, 5, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(7)/jewelry(1).avif', 60, 0, 60, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (58, 4, N'Sterling Silver Infinity Earrings', N'A timeless pair of sterling silver earrings with an elegant infinity design, perfect for any occasion.', N'Material: High-quality sterling silver for durability and shine  
Fit: Lightweight and comfortable for all-day wear  
Features: Elegant infinity symbol design, ideal for everyday wear or special occasions  
Colors: Available in silver, gold-plated, and rose gold  
Care: Avoid direct contact with water and chemicals, polish regularly with a soft cloth', N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(4).avif', 1, 0, 0, 0, 25, 5, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(1).avif', 55, 0, 55, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (59, 7, N'Classic Cotton Shirt', N'A stylish and comfortable classic cotton shirt, perfect for casual or formal occasions.', N'Material: High-quality cotton for breathability and comfort  
Fit: Available in multiple sizes for a perfect fit  
Features: Classic design, suitable for both casual and formal wear  
Colors: Available in white, black, navy, and gray  
Care: Machine wash cold, tumble dry low, iron on low heat if needed', N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(4).avif', 1, 0, 0, 0, 36, 20, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(2).avif', 35, 5, 700, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (60, 7, N'Premium Linen Shirt', N'A breathable and lightweight linen shirt, perfect for warm weather and versatile styling.', N'Material: High-quality linen fabric for ultimate comfort and durability  
Fit: Relaxed fit with a button-down design for a casual yet elegant look  
Features: Soft, breathable, and moisture-wicking fabric, ideal for summer wear  
Colors: Available in beige, light blue, olive green, and white  
Care: Hand wash or machine wash on a gentle cycle, hang dry for best results', N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(3).avif', 1, 0, 0, 0, 31, 21, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(1).avif', 50, 10, 500, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (61, 7, N'Elite Oxford Shirt', N'A premium and versatile Oxford shirt, perfect for both office and casual wear.', N'Material: High-quality cotton blend for softness and durability  
Fit: Tailored fit with a structured collar for a polished look  
Features: Wrinkle-resistant fabric, ideal for everyday wear  
Colors: Available in white, light blue, charcoal, and pastel pink  
Care: Machine wash warm, tumble dry low, iron on medium heat if needed', N'assets/images/clothes/images/Women/shirt1/shirt(12)/shirt(3).avif', 1, 0, 0, 0, 45, 19, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(12)/shirt(1).avif', 60, 0, 60, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (62, 7, N'Oxford Model Shirt ', N'A premium and versatile Oxford shirt, perfect for both office and casual wear.', N'Material: High-quality cotton blend for softness and durability  
Fit: Tailored fit with a structured collar for a polished look  
Features: Wrinkle-resistant fabric, ideal for everyday wear  
Colors: Available in white, light blue, charcoal, and pastel pink  
Care: Machine wash warm, tumble dry low, iron on medium heat if needed', N'assets/images/clothes/images/Women/shirt1/shirt(9)/shirt(3).avif', 1, 1, 0, 0, 48, 30, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/shirt1/shirt(9)/shirt(1).avif', 53, 0, 53, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (63, 9, N'Classic Baseball Cap', N'A stylish and comfortable baseball cap, perfect for everyday wear and outdoor activities.', N'Material: High-quality cotton fabric for breathability and durability  
Fit: Adjustable strap for a perfect fit  
Features: Classic six-panel design with ventilation eyelets  
Colors: Available in black, navy, beige, and red  
Care: Hand wash recommended, air dry only', N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', 1, 0, 0, 0, 20, 7, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(1).avif', 25, 5, 500, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (64, 9, N'Premium Wool Beanie', N'A warm and stylish wool beanie, perfect for cold weather and casual wear.', N'Material: Soft and high-quality wool for warmth and comfort  
Fit: Stretchable design, suitable for all head sizes  
Features: Thick knit texture with a minimalist look  
Colors: Available in black, gray, navy, and olive green  
Care: Hand wash in cold water, lay flat to dry', N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', 1, 0, 0, 0, 20, 7, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(1).avif', 32.99, 5, 659.8, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (65, 9, N'Classic Fedora Hat', N'A timeless and sophisticated fedora hat, perfect for formal and casual outfits.', N'Material: Premium wool blend for durability and elegance  
Fit: Available in multiple sizes with an adjustable inner band  
Features: Classic fedora shape with a structured brim and decorative band  
Colors: Available in black, brown, navy, and beige  
Care: Spot clean only, avoid excessive moisture', N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(5).avif', 1, 0, 0, 0, 20, 7, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(1).avif', 40.25, 0, 40.25, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (66, 9, N'Sports Performance Cap', N'A lightweight and breathable cap designed for sports and outdoor activities.', N'Material: High-quality polyester with moisture-wicking technology  
Fit: Adjustable strap for a secure and comfortable fit  
Features: Sweat-resistant inner band, breathable mesh panels  
Colors: Available in black, white, navy, and red  
Care: Hand wash recommended, air dry only', N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(2).avif', 1, 0, 0, 0, 20, 7, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(1).avif', 39, 0, 39, N'NEW')
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1.2).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (12, N'assets/images/clothes/images/Men/belt/belt_men(3).png', CAST(N'2025-03-07T16:32:19.600' AS DateTime), CAST(N'2025-03-07T16:32:19.600' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (12, N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', CAST(N'2025-03-07T16:32:19.600' AS DateTime), CAST(N'2025-03-07T16:32:19.600' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (13, N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (13, N'assets/images/clothes/images/Men/Jacket/jacket_men(1.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (13, N'assets/images/clothes/images/Men/Jacket/jacket_men(1.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (14, N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (14, N'assets/images/clothes/images/Men/Jacket/jacket_men(2.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (14, N'assets/images/clothes/images/Men/Jacket/jacket_men(2.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (15, N'assets/images/clothes/images/Men/Shirt/shirt_men(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (15, N'assets/images/clothes/images/Men/Shirt/shirt_men(1.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (15, N'assets/images/clothes/images/Men/Shirt/shirt_men(1.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (16, N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (16, N'assets/images/clothes/images/Men/Shirt/shirt_men(2.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (16, N'assets/images/clothes/images/Men/Shirt/shirt_men(2.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (17, N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (17, N'assets/images/clothes/images/Men/Shoes/shoes_men(1.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (17, N'assets/images/clothes/images/Men/Shoes/shoes_men(1.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (17, N'assets/images/clothes/images/Men/Shoes/shoes_men(1.3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (17, N'assets/images/clothes/images/Men/Shoes/shoes_men(1.4).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (18, N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (18, N'assets/images/clothes/images/Men/Shoes/shoes_men(3.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (18, N'assets/images/clothes/images/Men/Shoes/shoes_men(3.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (18, N'assets/images/clothes/images/Men/Shoes/shoes_men(3.3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (18, N'assets/images/clothes/images/Men/Shoes/shoes_men(3.4).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (19, N'assets/images/clothes/images/Men/Trouser/trouser_men(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (19, N'assets/images/clothes/images/Men/Trouser/trouser_men(1.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (19, N'assets/images/clothes/images/Men/Trouser/trouser_men(1.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (20, N'assets/images/clothes/images/Men/Trouser/trouser_men(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (20, N'assets/images/clothes/images/Men/Trouser/trouser_men(2.1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (20, N'assets/images/clothes/images/Men/Trouser/trouser_men(2.2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.7).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (25, N'assets/images/clothes/images/Women/dress1/dress(1)/dess(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (25, N'assets/images/clothes/images/Women/dress1/dress(1)/dess(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (25, N'assets/images/clothes/images/Women/dress1/dress(1)/dess(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (26, N'assets/images/clothes/images/Women/dress1/dress(2)/dess(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (26, N'assets/images/clothes/images/Women/dress1/dress(2)/dess(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (33, N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (33, N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (33, N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (33, N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (34, N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (34, N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (34, N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (34, N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (34, N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(9).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(8).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(7).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (35, N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (36, N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (36, N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (36, N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (36, N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (36, N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (37, N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(7).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (38, N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (38, N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (38, N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (38, N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (38, N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (39, N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(1).avif', CAST(N'2025-03-09T14:00:00.000' AS DateTime), CAST(N'2025-03-09T14:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (39, N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(2).avif', CAST(N'2025-03-09T14:00:00.000' AS DateTime), CAST(N'2025-03-09T14:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (39, N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(3).avif', CAST(N'2025-03-09T14:00:00.000' AS DateTime), CAST(N'2025-03-09T14:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (39, N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(4).avif', CAST(N'2025-03-09T14:00:00.000' AS DateTime), CAST(N'2025-03-09T14:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (39, N'assets/images/clothes/images/Women/trouser1/trouser(3)/trouser(5).avif', CAST(N'2025-03-09T14:00:00.000' AS DateTime), CAST(N'2025-03-09T14:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (40, N'assets/images/clothes/images/Women/trouser1/trouser(8)/trouser(3).avif', CAST(N'2025-03-09T16:00:00.000' AS DateTime), CAST(N'2025-03-09T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (40, N'assets/images/clothes/images/Women/trouser1/trouser(8)/trouser(2).avif', CAST(N'2025-03-09T16:00:00.000' AS DateTime), CAST(N'2025-03-09T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (40, N'assets/images/clothes/images/Women/trouser1/trouser(8)/trouser(1).avif', CAST(N'2025-03-09T16:00:00.000' AS DateTime), CAST(N'2025-03-09T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (41, N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(4).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (41, N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (41, N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (41, N'assets/images/clothes/images/Women/trouser1/trouser(12)/trouser(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (42, N'assets/images/clothes/images/Women/trouser1/trouser(7)/trouser(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (42, N'assets/images/clothes/images/Women/trouser1/trouser(7)/trouser(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (42, N'assets/images/clothes/images/Women/trouser1/trouser(7)/trouser(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (45, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (45, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (45, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (45, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (45, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(18)/hand_bag(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (46, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(24)/hand_bag(7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (8).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (47, N'assets/images/clothes/images/Women/shoes1/shoes(2)/shoes (1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (48, N'assets/images/clothes/images/Women/shoes1/shoes(19)/shoes(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(8).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (49, N'assets/images/clothes/images/Women/shoes1/shoes(15)/shoes(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(7).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (50, N'assets/images/clothes/images/Women/shoes1/shoes(10)/shoes(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(3)/dress(2).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(3)/dress(1).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(3)/dress(1).webp', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(3)/dress(2).webp', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(4)/dress(2).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(4)/dress(1).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (51, N'assets/images/clothes/images/Women/dress1/dress(4)/dress(3).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(6).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(5).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(4).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(3).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(2).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (53, N'assets/images/clothes/images/Women/dress1/dress(5)/dress(1).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (54, N'assets/images/clothes/images/Women/dress1/dress(19)/dress(1).webp', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (54, N'assets/images/clothes/images/Women/dress1/dress(19)/dress(4).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (54, N'assets/images/clothes/images/Women/dress1/dress(19)/dress(3).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (54, N'assets/images/clothes/images/Women/dress1/dress(19)/dress(2).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (54, N'assets/images/clothes/images/Women/dress1/dress(19)/dress(1).avif', CAST(N'2025-03-09T18:30:00.000' AS DateTime), CAST(N'2025-03-09T18:30:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (57, N'assets/images/clothes/images/Women/jewelry1/jewelry(7)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (57, N'assets/images/clothes/images/Women/jewelry1/jewelry(7)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (57, N'assets/images/clothes/images/Women/jewelry1/jewelry(7)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (58, N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (58, N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (58, N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (58, N'assets/images/clothes/images/Women/jewelry1/jewelry(9)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (59, N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (59, N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (59, N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (59, N'assets/images/clothes/images/Women/shirt1/shirt(20)/shirt(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (60, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (60, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (60, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (61, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (61, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (61, N'assets/images/clothes/images/Women/shirt1/shirt(17)/shirt(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (62, N'assets/images/clothes/images/Women/shirt1/shirt(9)/shirt(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (62, N'assets/images/clothes/images/Women/shirt1/shirt(9)/shirt(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (62, N'assets/images/clothes/images/Women/shirt1/shirt(9)/shirt(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(5).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (65, N'assets/images/clothes/images/Women/Hat1/hat(15)/hat(6).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (66, N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (66, N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at]) VALUES (66, N'assets/images/clothes/images/Women/Hat1/hat(7)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime))
GO
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'SO BEAUTIFULLLLL', 11, 4, 5, CAST(N'2025-03-10T10:38:22.420' AS DateTime), CAST(N'2025-03-10T10:38:22.420' AS DateTime))
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'COMMENT', 12, 6, 5, CAST(N'2025-03-10T22:35:04.923' AS DateTime), CAST(N'2025-03-10T22:35:04.923' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[sizes] ON 

INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (1, N'S', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (2, N'M', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (3, N'L', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (4, N'XL', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (5, N'XXL', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (16, N'36', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (17, N'37', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (18, N'38', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (19, N'39', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (20, N'40', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (21, N'41', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (22, N'42', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (23, N'43', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (24, N'44', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
SET IDENTITY_INSERT [dbo].[sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (4, N'vietpthe180666@fpt.edu.vn', N'123', N'0967870138', N'male', N'Sơn Tây, Hà Nội', N'assets/images/user/default.jpg', 1, CAST(N'2025-03-09T21:49:58.533' AS DateTime), CAST(N'2025-03-09T21:49:58.533' AS DateTime), N'1', N'Phạm Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (6, N'vietnxhe182409@fpt.edu.vn', N'12345', N'0345004504', N'Male', N'Hai Duong', N'assets/images/user/default.jpg', 1, CAST(N'2025-03-10T20:19:27.237' AS DateTime), CAST(N'2025-03-10T20:19:27.237' AS DateTime), N'1', N'Nhu Xuan Viet', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (7, N'viethvhe180241@fpt.edu.vn', N'123', N'0987654321', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-10T22:35:52.470' AS DateTime), CAST(N'2025-03-10T22:35:52.470' AS DateTime), N'1', N'Hoang Van Viet', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (8, N'nhuxuanviet27102004@gmail.com', N'123', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-13T00:33:55.680' AS DateTime), CAST(N'2025-03-13T00:33:55.680' AS DateTime), N'1', N'Young XVi3t', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (9, N'louisvuittonstore102@gmail.com', N'123', N'0123456789', N'Male', N'FPT HoaLac', NULL, 1, CAST(N'2025-03-13T16:26:14.070' AS DateTime), CAST(N'2025-03-13T16:26:14.070' AS DateTime), N'0', N'ADMIN', NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[products] ADD  DEFAULT (NULL) FOR [tag]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_Status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_users_role]  DEFAULT ((1)) FOR [role]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[genders] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[product_sizes]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[product_sizes]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[sizes] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
