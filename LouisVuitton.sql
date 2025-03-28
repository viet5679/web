USE [LouisVuitton]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 3/27/2025 10:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 3/27/2025 10:47:28 PM ******/
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
/****** Object:  Table [dbo].[genders]    Script Date: 3/27/2025 10:47:28 PM ******/
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
/****** Object:  Table [dbo].[notifications]    Script Date: 3/27/2025 10:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[order_id] [int] NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[is_read] [bit] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_details]    Script Date: 3/27/2025 10:47:28 PM ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 3/27/2025 10:47:28 PM ******/
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
	[comments] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_gender]    Script Date: 3/27/2025 10:47:28 PM ******/
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
/****** Object:  Table [dbo].[products]    Script Date: 3/27/2025 10:47:28 PM ******/
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
/****** Object:  Table [dbo].[products_images]    Script Date: 3/27/2025 10:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_images](
	[product_id] [int] NULL,
	[path] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[image_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 3/27/2025 10:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[description] [nvarchar](500) NULL,
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
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 3/27/2025 10:47:28 PM ******/
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
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (1, N'Wristlet', 1, CAST(N'2025-03-24T20:36:40.0000000' AS DateTime2), CAST(N'2025-03-24T20:36:40.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (2, N'Carry bag', 1, CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2), CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (3, N'Ring', 1, CAST(N'2025-03-24T20:36:57.0000000' AS DateTime2), CAST(N'2025-03-24T20:36:57.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (4, N'Earrings', 1, CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2), CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (5, N'Necklace', 1, CAST(N'2025-03-24T20:37:12.0000000' AS DateTime2), CAST(N'2025-03-24T20:37:12.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (6, N'Glasses', 1, CAST(N'2025-03-24T20:37:21.0000000' AS DateTime2), CAST(N'2025-03-24T20:37:21.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (9, N'Hat', 1, CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2), CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (10, N'Watch', 1, CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2), CAST(N'2025-02-17T08:16:42.0000000' AS DateTime2))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (12, N'Belt', 1, CAST(N'2025-02-18T09:52:45.0000000' AS DateTime2), CAST(N'2025-02-18T09:52:45.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[genders] ON 

INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (1, N'Women', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (2, N'Men', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[genders] OFF
GO
SET IDENTITY_INSERT [dbo].[notifications] ON 

INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (34, 6, 11, N'Order #11 has been processing', 1, CAST(N'2025-03-27T04:08:42.383' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (35, 6, 9, N'Order #9 has been processing', 1, CAST(N'2025-03-27T04:09:28.573' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (36, 6, 11, N'Order #11 has been shipped', 1, CAST(N'2025-03-27T04:10:49.140' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (37, 6, 11, N'Order #11 has been delivered', 1, CAST(N'2025-03-27T04:11:17.740' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (38, 6, 11, N'Order #11 has been delivered', 1, CAST(N'2025-03-27T04:14:22.673' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (39, 6, 10, N'Order #10 has been processing', 1, CAST(N'2025-03-27T04:14:45.023' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (40, 6, 10, N'Order #10 has been shipped', 1, CAST(N'2025-03-27T04:17:50.477' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (41, 4, 13, N'Order #13 has been processing', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (42, 4, 13, N'Order #13 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (43, 4, 13, N'Order #13 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (44, 4, 8, N'Order #8 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (45, 4, 8, N'Order #8 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (46, 4, 9, N'Order #9 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (47, 4, 10, N'Order #10 has been processing', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (48, 4, 9, N'Order #9 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (49, 4, 10, N'Order #10 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (50, 4, 10, N'Order #10 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (51, 4, 8, N'Order #8 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (52, 4, 12, N'Order #12 has been processing', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (53, 4, 8, N'Order #8 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (54, 4, 12, N'Order #12 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (55, 4, 12, N'Order #12 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (56, 4, 8, N'Order #8 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (57, 4, 14, N'Order #14 has been processing', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (58, 4, 14, N'Order #14 has been shipped', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (59, 4, 14, N'Order #14 has been delivered', 1, NULL)
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (60, 4, 15, N'Order #15 has been processing', 1, CAST(N'2025-03-27T10:21:39.390' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (61, 4, 15, N'Order #15 has been shipped', 1, CAST(N'2025-03-27T10:21:51.923' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (62, 4, 15, N'Order #15 has been delivered', 1, CAST(N'2025-03-27T10:22:04.753' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (63, 4, 16, N'Order #16 has been processing', 1, CAST(N'2025-03-27T10:53:51.387' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (64, 4, 16, N'Order #16 has been shipped', 1, CAST(N'2025-03-27T10:54:10.213' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (65, 4, 16, N'Order #16 has been delivered', 1, CAST(N'2025-03-27T10:54:30.530' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (66, 4, 17, N'Order #17 has been processing', 0, CAST(N'2025-03-27T11:30:38.790' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (67, 29, 18, N'Order #18 has been canceled', 0, CAST(N'2025-03-27T14:21:30.430' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (68, 29, 19, N'Order #19 has been processing', 0, CAST(N'2025-03-27T14:23:23.033' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (69, 29, 19, N'Order #19 has been shipped', 0, CAST(N'2025-03-27T14:23:29.560' AS DateTime))
INSERT [dbo].[notifications] ([id], [user_id], [order_id], [message], [is_read], [created_at]) VALUES (70, 29, 19, N'Order #19 has been delivered', 0, CAST(N'2025-03-27T14:23:34.460' AS DateTime))
SET IDENTITY_INSERT [dbo].[notifications] OFF
GO
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (1, 14, 375, 1, 0, 375, N'The Speedy Bandoulière 40', N'uploads-add/img_1742826031184.avif', N'Pending', CAST(N'2025-03-25T11:36:05.613' AS DateTime), CAST(N'2025-03-25T11:36:05.613' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (1, 15, 430, 1, 43, 387, N'The Gaston Bag', N'uploads-add/img_1742826160923.avif', N'Pending', CAST(N'2025-03-25T11:36:05.617' AS DateTime), CAST(N'2025-03-25T11:36:05.617' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (2, 1, 320, 1, 0, 320, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-25T11:45:52.327' AS DateTime), CAST(N'2025-03-25T11:45:52.327' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (3, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-25T11:54:33.973' AS DateTime), CAST(N'2025-03-25T11:54:33.973' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (3, 4, 210, 2, 0, 420, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-25T11:54:33.973' AS DateTime), CAST(N'2025-03-25T11:54:33.973' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (4, 1, 320, 3, 0, 960, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-25T12:10:45.950' AS DateTime), CAST(N'2025-03-25T12:10:45.950' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-25T15:39:59.510' AS DateTime), CAST(N'2025-03-25T15:39:59.510' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 1, 320, 3, 0, 960, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-25T15:39:59.510' AS DateTime), CAST(N'2025-03-25T15:39:59.510' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 2, 210, 6, 21, 1134, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-25T15:39:59.510' AS DateTime), CAST(N'2025-03-25T15:39:59.510' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 71, 127, 5, 0, 635, N'Louis Vuitton Rustic Heritage Bag in Brown', N'uploads-add/img_1742825029941.avif', N'Pending', CAST(N'2025-03-25T15:39:59.513' AS DateTime), CAST(N'2025-03-25T15:39:59.513' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 86, 160, 1, 8, 152, N'Louis Vuitton Golden Harmony Necklace', N'uploads-add/img_1742829520701.avif', N'Pending', CAST(N'2025-03-25T15:39:59.513' AS DateTime), CAST(N'2025-03-25T15:39:59.513' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (9, 1, 300, 1, 0, 300, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T21:59:07.320' AS DateTime), CAST(N'2025-03-26T21:59:07.320' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (9, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T21:59:07.327' AS DateTime), CAST(N'2025-03-26T21:59:07.327' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (10, 1, 300, 1, 0, 300, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T22:23:25.660' AS DateTime), CAST(N'2025-03-26T22:23:25.660' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (10, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T22:23:25.663' AS DateTime), CAST(N'2025-03-26T22:23:25.663' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (3, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-25T11:54:33.977' AS DateTime), CAST(N'2025-03-25T11:54:33.977' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (3, 1, 320, 2, 0, 640, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-25T11:54:33.977' AS DateTime), CAST(N'2025-03-25T11:54:33.977' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 1, 320, 1, 0, 320, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-25T12:20:59.520' AS DateTime), CAST(N'2025-03-25T12:20:59.520' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-25T12:20:59.520' AS DateTime), CAST(N'2025-03-25T12:20:59.520' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 3, 350, 3, 0, 1050, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-25T12:20:59.523' AS DateTime), CAST(N'2025-03-25T12:20:59.523' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-25T12:20:59.523' AS DateTime), CAST(N'2025-03-25T12:20:59.523' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 5, 370, 1, 0, 370, N'Monogram Tied Up Necklace', N'uploads-add/img_1742824980180.avif', N'Pending', CAST(N'2025-03-25T12:20:59.523' AS DateTime), CAST(N'2025-03-25T12:20:59.523' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 6, 400, 1, 0, 400, N'The LV Confidence Square Sunglasses', N'uploads-add/img_1742825124996.avif', N'Pending', CAST(N'2025-03-25T12:20:59.523' AS DateTime), CAST(N'2025-03-25T12:20:59.523' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 7, 410, 1, 0, 410, N'The LV Super Vision Metal Square Sunglasses ', N'uploads-add/img_1742825225804.avif', N'Pending', CAST(N'2025-03-25T12:20:59.527' AS DateTime), CAST(N'2025-03-25T12:20:59.527' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 8, 350, 1, 0, 350, N'The LV Flight Square Sunglasses ', N'uploads-add/img_1742825342606.avif', N'Pending', CAST(N'2025-03-25T12:20:59.527' AS DateTime), CAST(N'2025-03-25T12:20:59.527' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 9, 200, 1, 0, 200, N'LV Legacy Pilot Sunglasses', N'uploads-add/img_1742825564053.avif', N'Pending', CAST(N'2025-03-25T12:20:59.527' AS DateTime), CAST(N'2025-03-25T12:20:59.527' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 10, 210, 1, 21, 189, N'The LV Hinge Sunglasses', N'uploads-add/img_1742825668457.avif', N'Pending', CAST(N'2025-03-25T12:20:59.530' AS DateTime), CAST(N'2025-03-25T12:20:59.530' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-25T12:20:59.530' AS DateTime), CAST(N'2025-03-25T12:20:59.530' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 12, 270, 1, 81, 189, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-25T12:20:59.530' AS DateTime), CAST(N'2025-03-25T12:20:59.530' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 13, 495, 1, 0, 495, N'The Baladeur Bag', N'uploads-add/img_1742825801042.avif', N'Pending', CAST(N'2025-03-25T12:20:59.530' AS DateTime), CAST(N'2025-03-25T12:20:59.530' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 14, 375, 1, 0, 375, N'The Speedy Bandoulière 40', N'uploads-add/img_1742826031184.avif', N'Pending', CAST(N'2025-03-25T12:20:59.533' AS DateTime), CAST(N'2025-03-25T12:20:59.533' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 15, 430, 1, 43, 387, N'The Gaston Bag', N'uploads-add/img_1742826160923.avif', N'Pending', CAST(N'2025-03-25T12:20:59.533' AS DateTime), CAST(N'2025-03-25T12:20:59.533' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 16, 300, 1, 0, 300, N'The Trapezoidal Pulse Bag', N'uploads-add/img_1742826281730.avif', N'Pending', CAST(N'2025-03-25T12:20:59.533' AS DateTime), CAST(N'2025-03-25T12:20:59.533' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 17, 200, 1, 0, 200, N'The LV Vers Damier Cap', N'uploads-add/img_1742826436811.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 18, 220, 1, 0, 220, N'The LV Aerogram Cap', N'uploads-add/img_1742826558558.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 19, 190, 2, 0, 380, N'Denim Cap', N'uploads-add/img_1742826648966.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 20, 230, 2, 0, 460, N'The LV Staples Cap', N'uploads-add/img_1742826749290.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 21, 35.5, 2, 0, 71, N'Louis Vuitton Escale Platinum 39mm – Automatic Haute Horology', N'assets/images/clothes/images/Watch/watch(1).png', N'Pending', CAST(N'2025-03-25T12:20:59.540' AS DateTime), CAST(N'2025-03-25T12:20:59.540' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 22, 475, 2, 0, 950, N'Louis Vuitton Tambour Carpe Diem 39mm – Rose Gold Edition', N'assets/images/clothes/images/Watch/watch(2).png', N'Pending', CAST(N'2025-03-25T12:20:59.540' AS DateTime), CAST(N'2025-03-25T12:20:59.540' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 23, 13.19, 2, 0, 26.38, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'assets/images/clothes/images/Watch/watch(3).png', N'Pending', CAST(N'2025-03-25T12:20:59.543' AS DateTime), CAST(N'2025-03-25T12:20:59.543' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 24, 13.19, 1, 0, 13.19, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'assets/images/clothes/images/Watch/watch(4).png', N'Pending', CAST(N'2025-03-25T12:20:59.543' AS DateTime), CAST(N'2025-03-25T12:20:59.543' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 25, 305, 1, 0, 305, N'The LV Signature Cap', N'uploads-add/img_1742826936740.avif', N'Pending', CAST(N'2025-03-25T12:20:59.547' AS DateTime), CAST(N'2025-03-25T12:20:59.547' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 12, 270, 1, 81, 189, N'LV Fiction 30mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(3).png', N'Pending', CAST(N'2025-03-26T23:05:29.547' AS DateTime), CAST(N'2025-03-26T23:05:29.547' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 28, 100, 1, 0, 100, N'Luxe Classic Leather Handbag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 29, 29.99, 1, 0, 29.99, N'Classic Cotton Baseball Cap', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 30, 24.99, 1, 0, 24.99, N'Premium Cotton Dad Hat', N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 31, 49.99, 1, 0, 49.99, N'Elegant Gold-Plated Necklace', N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 32, 39.99, 1, 0, 39.99, N'Luxury Gold-Plated Bracelet', N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 43, 129.99, 1, 0, 129.99, N'Classic Leather Carry Bag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 44, 110, 1, 22, 88, N'Premium Leather Tote Bag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 55, 120, 1, 12, 108, N'Luxury Pearl Pendant Necklace', N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 56, 120, 1, 0, 120, N'Elegant Gold-Plated Bracelet', N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 63, 25, 1, 1.25, 23.75, N'Classic Baseball Cap', N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 64, 30, 1, 1.5, 28.5, N'Premium Wool Beanie', N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 68, 125, 1, 0, 125, N'Additional Louis Vuitton Signature Handbag Details', N'uploads-add/img_1742824331802.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 69, 189, 1, 0, 189, N'Louis Vuitton Celestial Elegance Bag', N'uploads-add/img_1742824647656.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 70, 146, 1, 0, 146, N'Louis Vuitton Celestial Elegance Bag in Pinkish Gray', N'uploads-add/img_1742824843510.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 71, 127, 1, 0, 127, N'Louis Vuitton Rustic Heritage Bag in Brown', N'uploads-add/img_1742825029941.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 72, 82, 1, 0, 82, N'Louis Vuitton Majestic Violet Earrings', N'uploads-add/img_1742826386007.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 73, 38, 1, 6.84, 31.16, N'Louis Vuitton Subtle Mist Earrings', N'uploads-add/img_1742826541398.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 74, 35, 1, 13.3, 21.7, N'Louis Vuitton Radiant Gold Earrings', N'uploads-add/img_1742826687339.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 75, 82, 1, 8.2, 73.8, N'Louis Vuitton Noir Gold Ring', N'uploads-add/img_1742826828342.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 76, 289, 1, 0, 289, N'Louis Vuitton Golden Diamond Ring', N'uploads-add/img_1742826970689.avif', N'Pending', CAST(N'2025-03-25T12:20:59.567' AS DateTime), CAST(N'2025-03-25T12:20:59.567' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 77, 63, 1, 3.15, 59.85, N'Louis Vuitton Rose Gold Ring', N'uploads-add/img_1742827245016.avif', N'Pending', CAST(N'2025-03-25T12:20:59.567' AS DateTime), CAST(N'2025-03-25T12:20:59.567' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 78, 152, 1, 15.2, 136.8, N'Louis Vuitton Rosy Diamond Ring', N'uploads-add/img_1742827414096.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 79, 30, 1, 1.5, 28.5, N'Louis Vuitton Midnight Elegance Hat', N'uploads-add/img_1742827801432.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 80, 25, 1, 0, 25, N'Louis Vuitton Luxe Fedora', N'uploads-add/img_1742828044555.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 81, 35, 1, 0, 35, N'Louis Vuitton Urban Edge Cap', N'uploads-add/img_1742828261459.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 82, 56, 1, 0, 56, N'Louis Vuitton Iconic Leather Belt', N'uploads-add/img_1742828815926.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 83, 42, 1, 2.1, 39.9, N'Louis Vuitton Signature Canvas Belt', N'uploads-add/img_1742829055553.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 84, 35, 1, 0, 35, N'Louis Vuitton Luxe Reversible Belt', N'uploads-add/img_1742829137999.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 85, 152, 1, 0, 152, N'Louis Vuitton Celestial Pearl Necklace', N'uploads-add/img_1742829453484.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 86, 160, 1, 8, 152, N'Louis Vuitton Golden Harmony Necklace', N'uploads-add/img_1742829520701.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 87, 230, 1, 0, 230, N'Louis Vuitton Timeless Diamond Necklace', N'uploads-add/img_1742829625163.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 88, 90, 1, 0, 90, N'Louis Vuitton Signature Cuff Bracelet', N'uploads-add/img_1742829709423.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 89, 95, 1, 0, 95, N'Louis Vuitton Elegant Charm Bracelet', N'uploads-add/img_1742829772423.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
GO
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 90, 78, 1, 0, 78, N'Louis Vuitton Luxe Bangle Bracelet', N'uploads-add/img_1742829871336.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 91, 26, 1, 0, 26, N'Louis Vuitton Urban Edge Sunglasses', N'uploads-add/img_1742829952926.avif', N'Pending', CAST(N'2025-03-25T12:20:59.583' AS DateTime), CAST(N'2025-03-25T12:20:59.583' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 92, 49.99, 1, 0, 49.99, N'Louis Vuitton Signature Aviator Sunglasses', N'uploads-add/img_1742830016184.avif', N'Pending', CAST(N'2025-03-25T12:20:59.583' AS DateTime), CAST(N'2025-03-25T12:20:59.583' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 93, 28, 1, 0, 28, N'Louis Vuitton Luxe Cat Eye Sunglasses', N'uploads-add/img_1742830087338.avif', N'Pending', CAST(N'2025-03-25T12:20:59.583' AS DateTime), CAST(N'2025-03-25T12:20:59.583' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (6, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-25T12:32:36.760' AS DateTime), CAST(N'2025-03-25T12:32:36.760' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (6, 5, 370, 3, 0, 1110, N'Monogram Tied Up Necklace', N'uploads-add/img_1742824980180.avif', N'Pending', CAST(N'2025-03-25T12:32:36.760' AS DateTime), CAST(N'2025-03-25T12:32:36.760' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-25T12:37:39.513' AS DateTime), CAST(N'2025-03-25T12:37:39.513' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-25T12:37:39.513' AS DateTime), CAST(N'2025-03-25T12:37:39.513' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 7, 410, 1, 0, 410, N'The LV Super Vision Metal Square Sunglasses ', N'uploads-add/img_1742825225804.avif', N'Pending', CAST(N'2025-03-25T12:37:39.513' AS DateTime), CAST(N'2025-03-25T12:37:39.513' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 8, 350, 2, 0, 700, N'The LV Flight Square Sunglasses ', N'uploads-add/img_1742825342606.avif', N'Pending', CAST(N'2025-03-25T12:37:39.517' AS DateTime), CAST(N'2025-03-25T12:37:39.517' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 14, 375, 2, 0, 750, N'The Speedy Bandoulière 40', N'uploads-add/img_1742826031184.avif', N'Pending', CAST(N'2025-03-26T23:05:29.550' AS DateTime), CAST(N'2025-03-26T23:05:29.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 1, 300, 8, 0, 2400, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T23:05:29.550' AS DateTime), CAST(N'2025-03-26T23:05:29.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 3, 350, 2, 0, 700, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-26T23:05:29.550' AS DateTime), CAST(N'2025-03-26T23:05:29.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 2, 210, 2, 21, 378, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T23:05:29.550' AS DateTime), CAST(N'2025-03-26T23:05:29.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (13, 1, 300, 1, 0, 300, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-27T06:28:26.293' AS DateTime), CAST(N'2025-03-27T06:28:26.293' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (13, 2, 210, 2, 21, 378, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-27T06:28:26.300' AS DateTime), CAST(N'2025-03-27T06:28:26.300' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (13, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-27T06:28:26.300' AS DateTime), CAST(N'2025-03-27T06:28:26.300' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (13, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-27T06:28:26.300' AS DateTime), CAST(N'2025-03-27T06:28:26.300' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 17, 200, 1, 0, 200, N'The LV Vers Damier Cap', N'uploads-add/img_1742826436811.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 18, 220, 1, 0, 220, N'The LV Aerogram Cap', N'uploads-add/img_1742826558558.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 19, 190, 2, 0, 380, N'Denim Cap', N'uploads-add/img_1742826648966.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 20, 230, 2, 0, 460, N'The LV Staples Cap', N'uploads-add/img_1742826749290.avif', N'Pending', CAST(N'2025-03-25T12:20:59.537' AS DateTime), CAST(N'2025-03-25T12:20:59.537' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 21, 35.5, 2, 0, 71, N'Louis Vuitton Escale Platinum 39mm – Automatic Haute Horology', N'assets/images/clothes/images/Watch/watch(1).png', N'Pending', CAST(N'2025-03-25T12:20:59.540' AS DateTime), CAST(N'2025-03-25T12:20:59.540' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 22, 475, 2, 0, 950, N'Louis Vuitton Tambour Carpe Diem 39mm – Rose Gold Edition', N'assets/images/clothes/images/Watch/watch(2).png', N'Pending', CAST(N'2025-03-25T12:20:59.540' AS DateTime), CAST(N'2025-03-25T12:20:59.540' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 23, 13.19, 2, 0, 26.38, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'assets/images/clothes/images/Watch/watch(3).png', N'Pending', CAST(N'2025-03-25T12:20:59.543' AS DateTime), CAST(N'2025-03-25T12:20:59.543' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 24, 13.19, 1, 0, 13.19, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'assets/images/clothes/images/Watch/watch(4).png', N'Pending', CAST(N'2025-03-25T12:20:59.543' AS DateTime), CAST(N'2025-03-25T12:20:59.543' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 25, 305, 1, 0, 305, N'The LV Signature Cap', N'uploads-add/img_1742826936740.avif', N'Pending', CAST(N'2025-03-25T12:20:59.547' AS DateTime), CAST(N'2025-03-25T12:20:59.547' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 28, 100, 1, 0, 100, N'Luxe Classic Leather Handbag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 29, 29.99, 1, 0, 29.99, N'Classic Cotton Baseball Cap', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 30, 24.99, 1, 0, 24.99, N'Premium Cotton Dad Hat', N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.550' AS DateTime), CAST(N'2025-03-25T12:20:59.550' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 31, 49.99, 1, 0, 49.99, N'Elegant Gold-Plated Necklace', N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 32, 39.99, 1, 0, 39.99, N'Luxury Gold-Plated Bracelet', N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 43, 129.99, 1, 0, 129.99, N'Classic Leather Carry Bag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', N'Pending', CAST(N'2025-03-25T12:20:59.553' AS DateTime), CAST(N'2025-03-25T12:20:59.553' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 44, 110, 1, 22, 88, N'Premium Leather Tote Bag', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 55, 120, 1, 12, 108, N'Luxury Pearl Pendant Necklace', N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 56, 120, 1, 0, 120, N'Elegant Gold-Plated Bracelet', N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 63, 25, 1, 1.25, 23.75, N'Classic Baseball Cap', N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', N'Pending', CAST(N'2025-03-25T12:20:59.557' AS DateTime), CAST(N'2025-03-25T12:20:59.557' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 64, 30, 1, 1.5, 28.5, N'Premium Wool Beanie', N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 68, 125, 1, 0, 125, N'Additional Louis Vuitton Signature Handbag Details', N'uploads-add/img_1742824331802.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 69, 189, 1, 0, 189, N'Louis Vuitton Celestial Elegance Bag', N'uploads-add/img_1742824647656.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 70, 146, 1, 0, 146, N'Louis Vuitton Celestial Elegance Bag in Pinkish Gray', N'uploads-add/img_1742824843510.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 15, 430, 3, 43, 1161, N'The Gaston Bag', N'uploads-add/img_1742826160923.avif', N'Pending', CAST(N'2025-03-26T23:35:08.733' AS DateTime), CAST(N'2025-03-26T23:35:08.733' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 13, 495, 2, 0, 990, N'The Baladeur Bag', N'uploads-add/img_1742825801042.avif', N'Pending', CAST(N'2025-03-26T23:35:08.737' AS DateTime), CAST(N'2025-03-26T23:35:08.737' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 1, 300, 4, 0, 1200, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T23:35:08.740' AS DateTime), CAST(N'2025-03-26T23:35:08.740' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T23:35:08.740' AS DateTime), CAST(N'2025-03-26T23:35:08.740' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 6, 400, 1, 0, 400, N'The LV Confidence Square Sunglasses', N'uploads-add/img_1742825124996.avif', N'Pending', CAST(N'2025-03-26T23:35:08.740' AS DateTime), CAST(N'2025-03-26T23:35:08.740' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (12, 11, 280, 1, 0, 280, N'LV Initiales 40mm Reversible Belt', N'assets/images/clothes/images/Men/belt/belt_men(1).png', N'Pending', CAST(N'2025-03-26T23:35:08.740' AS DateTime), CAST(N'2025-03-26T23:35:08.740' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 71, 127, 1, 0, 127, N'Louis Vuitton Rustic Heritage Bag in Brown', N'uploads-add/img_1742825029941.avif', N'Pending', CAST(N'2025-03-25T12:20:59.560' AS DateTime), CAST(N'2025-03-25T12:20:59.560' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 72, 82, 1, 0, 82, N'Louis Vuitton Majestic Violet Earrings', N'uploads-add/img_1742826386007.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 73, 38, 1, 6.84, 31.16, N'Louis Vuitton Subtle Mist Earrings', N'uploads-add/img_1742826541398.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 74, 35, 1, 13.3, 21.7, N'Louis Vuitton Radiant Gold Earrings', N'uploads-add/img_1742826687339.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 75, 82, 1, 8.2, 73.8, N'Louis Vuitton Noir Gold Ring', N'uploads-add/img_1742826828342.avif', N'Pending', CAST(N'2025-03-25T12:20:59.563' AS DateTime), CAST(N'2025-03-25T12:20:59.563' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 76, 289, 1, 0, 289, N'Louis Vuitton Golden Diamond Ring', N'uploads-add/img_1742826970689.avif', N'Pending', CAST(N'2025-03-25T12:20:59.567' AS DateTime), CAST(N'2025-03-25T12:20:59.567' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 77, 63, 1, 3.15, 59.85, N'Louis Vuitton Rose Gold Ring', N'uploads-add/img_1742827245016.avif', N'Pending', CAST(N'2025-03-25T12:20:59.567' AS DateTime), CAST(N'2025-03-25T12:20:59.567' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 78, 152, 1, 15.2, 136.8, N'Louis Vuitton Rosy Diamond Ring', N'uploads-add/img_1742827414096.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 79, 30, 1, 1.5, 28.5, N'Louis Vuitton Midnight Elegance Hat', N'uploads-add/img_1742827801432.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 80, 25, 1, 0, 25, N'Louis Vuitton Luxe Fedora', N'uploads-add/img_1742828044555.avif', N'Pending', CAST(N'2025-03-25T12:20:59.570' AS DateTime), CAST(N'2025-03-25T12:20:59.570' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 81, 35, 1, 0, 35, N'Louis Vuitton Urban Edge Cap', N'uploads-add/img_1742828261459.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 82, 56, 1, 0, 56, N'Louis Vuitton Iconic Leather Belt', N'uploads-add/img_1742828815926.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 83, 42, 1, 2.1, 39.9, N'Louis Vuitton Signature Canvas Belt', N'uploads-add/img_1742829055553.avif', N'Pending', CAST(N'2025-03-25T12:20:59.573' AS DateTime), CAST(N'2025-03-25T12:20:59.573' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 84, 35, 1, 0, 35, N'Louis Vuitton Luxe Reversible Belt', N'uploads-add/img_1742829137999.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 85, 152, 1, 0, 152, N'Louis Vuitton Celestial Pearl Necklace', N'uploads-add/img_1742829453484.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 86, 160, 1, 8, 152, N'Louis Vuitton Golden Harmony Necklace', N'uploads-add/img_1742829520701.avif', N'Pending', CAST(N'2025-03-25T12:20:59.577' AS DateTime), CAST(N'2025-03-25T12:20:59.577' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 87, 230, 1, 0, 230, N'Louis Vuitton Timeless Diamond Necklace', N'uploads-add/img_1742829625163.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 88, 90, 1, 0, 90, N'Louis Vuitton Signature Cuff Bracelet', N'uploads-add/img_1742829709423.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (5, 89, 95, 1, 0, 95, N'Louis Vuitton Elegant Charm Bracelet', N'uploads-add/img_1742829772423.avif', N'Pending', CAST(N'2025-03-25T12:20:59.580' AS DateTime), CAST(N'2025-03-25T12:20:59.580' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 1, 320, 1, 0, 320, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T23:43:37.313' AS DateTime), CAST(N'2025-03-26T23:43:37.313' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 6, 400, 1, 0, 400, N'The LV Confidence Square Sunglasses', N'uploads-add/img_1742825124996.avif', N'Pending', CAST(N'2025-03-26T23:43:37.313' AS DateTime), CAST(N'2025-03-26T23:43:37.313' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (7, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-26T23:43:37.313' AS DateTime), CAST(N'2025-03-26T23:43:37.313' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T23:48:16.777' AS DateTime), CAST(N'2025-03-26T23:48:16.777' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-26T23:48:16.777' AS DateTime), CAST(N'2025-03-26T23:48:16.777' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (8, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-26T23:48:16.777' AS DateTime), CAST(N'2025-03-26T23:48:16.777' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (10, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-27T00:02:59.307' AS DateTime), CAST(N'2025-03-27T00:02:59.307' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (6, 1, 320, 5, 0, 1600, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-26T22:50:53.243' AS DateTime), CAST(N'2025-03-26T22:50:53.243' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 3, 350, 2, 0, 700, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-27T07:27:53.423' AS DateTime), CAST(N'2025-03-27T07:27:53.423' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 8, 350, 2, 0, 700, N'The LV Flight Square Sunglasses ', N'uploads-add/img_1742825342606.avif', N'Pending', CAST(N'2025-03-27T07:27:53.430' AS DateTime), CAST(N'2025-03-27T07:27:53.430' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 1, 300, 5, 0, 1500, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-27T07:27:53.433' AS DateTime), CAST(N'2025-03-27T07:27:53.433' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 9, 200, 1, 0, 200, N'LV Legacy Pilot Sunglasses', N'uploads-add/img_1742825564053.avif', N'Pending', CAST(N'2025-03-27T07:27:53.433' AS DateTime), CAST(N'2025-03-27T07:27:53.433' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 5, 370, 1, 0, 370, N'Monogram Tied Up Necklace', N'uploads-add/img_1742824980180.avif', N'Pending', CAST(N'2025-03-27T07:27:53.437' AS DateTime), CAST(N'2025-03-27T07:27:53.437' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (14, 2, 210, 2, 21, 378, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-27T07:27:53.440' AS DateTime), CAST(N'2025-03-27T07:27:53.440' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-27T10:53:37.620' AS DateTime), CAST(N'2025-03-27T10:53:37.620' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 3, 350, 1, 175, 175, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-27T10:53:37.623' AS DateTime), CAST(N'2025-03-27T10:53:37.623' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (16, 4, 210, 1, 0, 210, N'LV Flower Studs Necklace', N'uploads-add/img_1742824742598.avif', N'Pending', CAST(N'2025-03-27T10:53:37.627' AS DateTime), CAST(N'2025-03-27T10:53:37.627' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 80, 25, 1, 0, 25, N'Louis Vuitton Luxe Fedora', N'uploads-add/img_1742828044555.avif', N'Pending', CAST(N'2025-03-27T14:20:35.457' AS DateTime), CAST(N'2025-03-27T14:20:35.457' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (18, 1, 300, 1, 45, 255, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-27T14:20:35.460' AS DateTime), CAST(N'2025-03-27T14:20:35.460' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (19, 1, 300, 1, 45, 255, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-27T14:23:07.787' AS DateTime), CAST(N'2025-03-27T14:23:07.787' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (6, 10, 210, 1, 21, 189, N'The LV Hinge Sunglasses', N'uploads-add/img_1742825668457.avif', N'Pending', CAST(N'2025-03-26T22:50:53.247' AS DateTime), CAST(N'2025-03-26T22:50:53.247' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (9, 2, 210, 1, 21, 189, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-26T23:51:52.067' AS DateTime), CAST(N'2025-03-26T23:51:52.067' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (11, 3, 350, 1, 0, 350, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-27T00:11:56.723' AS DateTime), CAST(N'2025-03-27T00:11:56.723' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 2, 210, 2, 21, 378, N'The Rush Belt Bag', N'uploads-add/img_1742825943913.avif', N'Pending', CAST(N'2025-03-27T10:21:17.140' AS DateTime), CAST(N'2025-03-27T10:21:17.140' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 3, 350, 1, 175, 175, N'Pearls Fusion', N'uploads-add/img_1742824620871.avif', N'Pending', CAST(N'2025-03-27T10:21:17.140' AS DateTime), CAST(N'2025-03-27T10:21:17.140' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (15, 1, 300, 2, 45, 510, N'Monogram Chain Necklace', N'uploads-add/img_1742823940802.avif', N'Pending', CAST(N'2025-03-27T10:21:17.140' AS DateTime), CAST(N'2025-03-27T10:21:17.140' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 24, 13.19, 1, 0, 13.19, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'assets/images/clothes/images/Watch/watch(4).png', N'Pending', CAST(N'2025-03-27T11:30:13.243' AS DateTime), CAST(N'2025-03-27T11:30:13.243' AS DateTime))
INSERT [dbo].[order_details] ([order_id], [product_id], [price], [quantity], [discount], [total_price], [name], [avatar], [status], [created_at], [updated_at]) VALUES (17, 23, 13.19, 1, 0, 13.19, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'assets/images/clothes/images/Watch/watch(3).png', N'Pending', CAST(N'2025-03-27T11:30:13.247' AS DateTime), CAST(N'2025-03-27T11:30:13.247' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[orders] ON 

INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (1, 4, 762, 2, N'Delivered', CAST(N'2025-03-25T11:36:06.0000000' AS DateTime2), CAST(N'2025-03-25T11:36:06.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Thanh Lâm, Huyện Ba Chẽ, Tỉnh Quảng Ninh', N'please quickly')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (2, 10, 320, 1, N'Delivered', CAST(N'2025-03-25T11:45:52.0000000' AS DateTime2), CAST(N'2025-03-25T11:45:52.0000000' AS DateTime2), N'Pham Tuan Viet', N'1234567890', N'số nhà 230, Xã Khánh Khê, Huyện Văn Quan, Tỉnh Lạng Sơn', N'hehe')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (3, 4, 1599, 4, N'Delivered', CAST(N'2025-03-25T11:54:34.0000000' AS DateTime2), CAST(N'2025-03-25T11:54:34.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Quảng Minh, Huyện Hải Hà, Tỉnh Quảng Ninh', N'quiccckkkkklyyyyyyyyyyyyyyyyyyy')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (4, 18, 960, 1, N'Delivered', CAST(N'2025-03-25T12:10:46.0000000' AS DateTime2), CAST(N'2025-03-25T12:10:46.0000000' AS DateTime2), N'My Ngo', N'0383901165', N'số nhà 230, Xã Dương Xá, Huyện Gia Lâm, Thành phố Hà Nội', N'hehe')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (5, 4, 11574.459999999997, 63, N'Delivered', CAST(N'2025-03-25T12:20:59.0000000' AS DateTime2), CAST(N'2025-03-25T12:20:59.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Lũng Cú, Huyện Đồng Văn, Tỉnh Hà Giang', N'cẩn thận nhiều đồ tốn tiền')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (6, 10, 1299, 2, N'Canceled', CAST(N'2025-03-25T12:32:37.0000000' AS DateTime2), CAST(N'2025-03-25T12:32:37.0000000' AS DateTime2), N'Pham Tuan Viet', N'1234567890', N'số nhà 230, Xã Sính Lủng, Huyện Đồng Văn, Tỉnh Hà Giang', N'quick
')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (7, 18, 1670, 4, N'Delivered', CAST(N'2025-03-25T12:37:39.0000000' AS DateTime2), CAST(N'2025-03-25T12:37:39.0000000' AS DateTime2), N'My Ngo', N'0383901165', N'số nhà 230, Xã Vân Hòa, Huyện Ba Vì, Thành phố Hà Nội', N'nhanh nhanh
')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (8, 4, 3231, 5, N'Delivered', CAST(N'2025-03-18T15:39:59.0000000' AS DateTime2), CAST(N'2025-03-25T15:39:59.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Dương Quang, Huyện Gia Lâm, Thành phố Hà Nội', N'nhanh nhanh ho em')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (9, 4, 459, 2, N'Delivered', CAST(N'2025-03-26T21:59:07.0000000' AS DateTime2), CAST(N'2025-03-26T21:59:07.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', N'nhanh nhanh')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (10, 4, 459, 2, N'Delivered', CAST(N'2025-03-26T22:23:26.0000000' AS DateTime2), CAST(N'2025-03-26T22:23:26.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Thượng Đình, Quận Thanh Xuân, Thành phố Hà Nội', N'hehe')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (11, 4, 4177, 5, N'Delivered', CAST(N'2025-03-26T23:05:30.0000000' AS DateTime2), CAST(N'2025-03-26T23:05:30.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng', N'hehe
')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (12, 4, 4100, 6, N'Delivered', CAST(N'2025-03-26T23:35:09.0000000' AS DateTime2), CAST(N'2025-03-26T23:35:09.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Phúc Tân, Quận Hoàn Kiếm, Thành phố Hà Nội', N'nhanh nhanh
')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (13, 4, 1208, 4, N'Delivered', CAST(N'2025-03-27T06:28:26.0000000' AS DateTime2), CAST(N'2025-03-27T06:28:26.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Cống Vị, Quận Ba Đình, Thành phố Hà Nội', N'nhanh nhanh')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (14, 4, 3698, 6, N'Delivered', CAST(N'2025-03-27T07:27:53.0000000' AS DateTime2), CAST(N'2025-03-27T07:27:53.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Phúc Sơn, Huyện Sơn Động, Tỉnh Bắc Giang', N'chuyển nhanh nhẹn giúp em')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (15, 4, 1063, 3, N'Delivered', CAST(N'2025-03-27T10:21:17.0000000' AS DateTime2), CAST(N'2025-03-27T10:21:17.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Đạo Trù, Huyện Tam Đảo, Tỉnh Vĩnh Phúc', N'giao nhanh')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (16, 4, 574, 3, N'Delivered', CAST(N'2025-03-27T10:53:38.0000000' AS DateTime2), CAST(N'2025-03-27T10:53:38.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Thị trấn Lương Sơn, Huyện Lương Sơn, Tỉnh Hoà Bình', N'230')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (17, 4, 26.38, 2, N'Processing', CAST(N'2025-03-27T11:30:13.0000000' AS DateTime2), CAST(N'2025-03-27T11:30:13.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Đoàn Kết, Thành phố Lai Châu, Tỉnh Lai Châu', N'htrt')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (18, 29, 280, 2, N'Canceled', CAST(N'2025-03-27T14:20:35.0000000' AS DateTime2), CAST(N'2025-03-27T14:20:35.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Phường Mỏ Chè, Thành phố Sông Công, Tỉnh Thái Nguyên', N'giao nhanh')
INSERT [dbo].[orders] ([id], [user_id], [total_price], [total_product], [status], [created_at], [updated_at], [name], [phone], [address], [comments]) VALUES (19, 29, 255, 1, N'Delivered', CAST(N'2025-03-27T14:23:08.0000000' AS DateTime2), CAST(N'2025-03-27T14:23:08.0000000' AS DateTime2), N'Phạm Việt', N'0967870138', N'số nhà 230, Xã Bằng Thành, Huyện Pác Nặm, Tỉnh Bắc Kạn', N'454')
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (1, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (2, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (3, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (4, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (5, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (6, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (7, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (8, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (9, 2)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (10, 2)
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
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (28, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (29, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (30, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (31, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (32, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (43, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (44, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (55, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (56, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (63, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (64, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (68, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (69, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (70, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (71, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (72, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (73, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (74, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (75, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (76, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (77, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (78, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (79, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (80, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (81, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (82, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (83, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (84, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (85, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (86, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (87, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (88, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (89, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (90, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (91, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (92, 1)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (93, 1)
GO
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (1, 5, N'Monogram Chain Necklace', N'<p>
	Crafted with precision, the Monogram Chain Necklace showcases sturdy metal links that exude both strength and sophistication. Its minimalist yet striking design makes it a versatile accessory for both men and women, effortlessly complementing various styles. Made from high-quality materials, this necklace is durable and resistant to tarnishing over time. A perfect statement piece to express your individuality and refined taste.</p>
', N'<p>
	The Monogram Chain Necklace features a sleek and modern link design, adding a touch of elegance and boldness to any outfit.</p>
', N'uploads-add/img_1742823940802.avif', 1, 1, 2, 4, 15, 15, CAST(N'2025-03-24T20:45:41.0000000' AS DateTime2), CAST(N'2025-03-27T08:46:58.0000000' AS DateTime2), N'uploads-add/img_1742823940844.avif', 300, 15, 255, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (2, 2, N'The Rush Belt Bag', N'<p>
	The Rush Belt Bag merges contemporary fashion with urban-inspired aesthetics. Crafted from LV Blason Denim, it showcases a bold LV logo against a black denim canvas with a unique faded effect. Designed for versatility, it can be worn around the waist, over the shoulder, or crossbody, adapting effortlessly to any style. A standout feature is the detachable headphone-shaped charm, an exclusive design by Artistic Director Pharrell Williams. The bag offers practicality with a spacious main compartment secured by a double zipper and an additional front pocket for essentials like a phone or cards. With an adjustable strap, this statement piece ensures both comfort and convenience.</p>
', N'<p>
	Material: LV Blason Denim with premium calf leather trims.<br data-end="1877" data-start="1874" />
	Craftsmanship: Expertly constructed with a cotton lining and silver-tone metal details.<br data-end="1971" data-start="1968" />
	Design: Modern belt bag with a faded denim effect and bold LV logo.<br data-end="2045" data-start="2042" />
	Hardware: Signature silver-tone accents and a detachable headphone charm.<br data-end="2125" data-is-only-node="" data-start="2122" />
	Versatility: Adjustable strap for waist, shoulder, or crossbody wear.<br data-end="2201" data-start="2198" />
	Dimensions: 30 x 15 x 8 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742825943913.avif', 1, 0, 1, 4, 30, 4, CAST(N'2025-03-24T21:19:04.0000000' AS DateTime2), CAST(N'2025-03-24T21:19:04.0000000' AS DateTime2), N'uploads-add/img_1742825943953.avif', 210, 10, 189, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (3, 5, N'Pearls Fusion', N'<p>
	The Pearls Fusion Necklace is a perfect balance of classic and contemporary style, featuring luxurious pearls intertwined with unique metal elements. Its exquisite design enhances elegance while adding a bold touch, making it suitable for various fashion styles. Made from high-quality materials, this necklace ensures durability and lasting shine. A must-have accessory to express your refined taste and elegance.</p>
', N'<p>
	Material<strong data-end="13" data-is-only-node="" data-start="0">:</strong> Exquisite pearls combined with high-quality metal accents for a unique fusion of elegance and modernity.<br data-end="121" data-start="118" />
	Craftsmanship<strong data-end="139" data-start="121">:</strong> Meticulously crafted with fine detailing to ensure lasting beauty and durability.<br data-end="224" data-start="221" />
	Design<strong data-end="235" data-start="224">:</strong> A perfect balance of classic pearls and contemporary metal links, creating a distinctive statement piece.<br data-end="344" data-start="341" />
	Versatility<strong data-end="360" data-start="344">:</strong> Effortlessly complements various outfits, from casual chic to sophisticated evening wear.<br data-end="453" data-start="450" />
	Durability<strong data-end="468" data-start="453">:</strong> Made from premium materials that maintain their luster and quality over time.</p>
', N'uploads-add/img_1742824620871.avif', 1, 0, 0, 0, 57, 7, CAST(N'2025-03-24T20:57:01.0000000' AS DateTime2), CAST(N'2025-03-27T08:53:41.0000000' AS DateTime2), N'uploads-add/img_1742824620876.avif', 350, 50, 175, N'50%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (4, 5, N'LV Flower Studs Necklace', N'<p>
	The LV Flower Studs Necklace is meticulously crafted with signature floral motifs, combined with high-quality metal for lasting brilliance and durability. Its refined yet eye-catching design effortlessly complements various styles, from everyday wear to special occasions. A perfect accessory to showcase your elegance and sophistication.</p>
', N'<p>
	Material: Premium metal with signature floral accents, ensuring a refined and luxurious finish.<br data-end="102" data-start="99" />
	Craftsmanship: Expertly crafted with meticulous detailing for lasting brilliance and durability.<br data-end="205" data-start="202" />
	Design: Elegant floral motifs blended with a sleek, modern structure for a timeless appeal.<br data-end="303" data-start="300" />
	Versatility: Perfectly complements both casual outfits and sophisticated evening wear.<br data-end="396" data-start="393" />
	Durability: High-quality materials resistant to tarnishing, maintaining their shine over time.</p>
', N'uploads-add/img_1742824742598.avif', 1, 0, 0, 0, 61, 4, CAST(N'2025-03-24T20:59:03.0000000' AS DateTime2), CAST(N'2025-03-24T20:59:03.0000000' AS DateTime2), N'uploads-add/img_1742824742602.avif', 210, 0, 210, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (5, 5, N'Monogram Tied Up Necklace', N'<p>
	The Monogram Tied Up Necklace is meticulously crafted with a striking knot detail, creating a balance between sophistication and strength. Made from high-quality metal, it ensures durability and lasting shine. The innovative design seamlessly combines softness with an edgy appeal, making it a versatile accessory for both men and women. Perfect for those who want to showcase their distinctive style and refined taste.</p>
', N'<p>
	Material: High-quality metal with a sleek finish and signature knotted detail.<br data-end="1303" data-start="1300" />
	Craftsmanship: Expertly handcrafted with precision for lasting elegance and durability.<br data-end="1397" data-start="1394" />
	Design: A fusion of classic and contemporary elements, featuring a stylish knotted accent.<br data-end="1494" data-start="1491" />
	Versatility: Complements both casual and formal outfits, adding a unique statement.<br data-end="1584" data-is-only-node="" data-start="1581" />
	Durability: Premium materials resistant to tarnishing, ensuring long-lasting brilliance.</p>
', N'uploads-add/img_1742824980180.avif', 1, 0, 0, 0, 73, 1, CAST(N'2025-03-24T21:03:00.0000000' AS DateTime2), CAST(N'2025-03-24T21:03:00.0000000' AS DateTime2), N'uploads-add/img_1742824980182.avif', 370, 0, 370, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (6, 6, N'The LV Confidence Square Sunglasses', N'<p data-end="1134" data-start="713">
	The LV Confidence Square Sunglasses feature a sturdy frame with refined metal accents, offering a sharp and contemporary look. Designed to complement various face shapes, its angular design adds structure and style. The high-quality UV-protective lenses ensure optimal eye protection in all lighting conditions. A perfect accessory for those who embrace a modern, bold, and confident style.</p>
<p>
	&nbsp;</p>
', N'<div>
	<div data-message-author-role="assistant" data-message-id="ffdcba41-7077-431f-9aee-04d5f0acc32d" data-message-model-slug="gpt-4o" dir="auto">
		<div>
			<div>
				<p data-end="1622" data-start="1169">
					Material: Premium acetate and metal frame with high-quality UV-protective lenses.<br data-end="1257" data-start="1254" />
					Craftsmanship: Expertly designed with precision detailing for a refined and durable finish.<br data-end="1355" data-start="1352" />
					Design: A bold square shape with elegant metal accents, exuding confidence and sophistication.<br data-end="1456" data-start="1453" />
					Versatility: Perfectly complements casual, business, and luxury fashion styles.<br data-end="1542" data-is-only-node="" data-start="1539" />
					Durability: Scratch-resistant lenses and sturdy frame for long-lasting wear.</p>
			</div>
		</div>
	</div>
</div>
<p>
	&nbsp;</p>
', N'uploads-add/img_1742825124996.avif', 1, 0, 0, 0, 52, 1, CAST(N'2025-03-24T21:05:25.0000000' AS DateTime2), CAST(N'2025-03-24T21:05:25.0000000' AS DateTime2), N'uploads-add/img_1742825125035.avif', 400, 0, 400, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (7, 6, N'The LV Super Vision Metal Square Sunglasses ', N'<p>
	The LV Super Vision Metal Square Sunglasses offer a modern aesthetic with a premium metal frame and high-quality UV-protective lenses. The sharp, structured square design enhances facial features, making it a versatile choice for both men and women. Intricate metal details add a touch of sophistication, making it the perfect accessory for those who embrace confidence and refined elegance.</p>
', N'<p>
	Material: High-quality metal frame with UV-protective lenses for superior eye protection.<br data-end="1253" data-start="1250" />
	Craftsmanship: Expertly designed with precision metalwork for a sleek and durable finish.<br data-end="1349" data-start="1346" />
	Design: A bold square silhouette with refined metallic details for a sophisticated touch.<br data-end="1445" data-start="1442" />
	Versatility: Perfectly complements both casual and formal outfits with effortless style.<br data-end="1540" data-is-only-node="" data-start="1537" />
	Durability: Scratch-resistant lenses and a sturdy frame for long-lasting wear.</p>
', N'uploads-add/img_1742825225804.avif', 1, 0, 0, 0, 63, 2, CAST(N'2025-03-24T21:07:06.0000000' AS DateTime2), CAST(N'2025-03-24T21:07:06.0000000' AS DateTime2), N'uploads-add/img_1742825225808.avif', 410, 0, 410, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (8, 6, N'The LV Flight Square Sunglasses ', N'<p>
	The LV Flight Square Sunglasses combine sophisticated aesthetics with superior protection. Crafted from premium metal and acetate, the frame ensures durability and a luxurious feel. The Champagne-colored gradient lenses not only enhance the stylish look but also provide 100% UV protection. The design is further elevated by refined detailing along the top of the frame and oversized metal hinges engraved with the iconic LV logo. Made in Italy, this eyewear is the perfect choice for those who appreciate contemporary style and a sense of adventure.</p>
', N'<p>
	Material: Premium metal and acetate frame with gradient Champagne lenses.<br data-end="1717" data-start="1714" />
	Craftsmanship: Expertly crafted in Italy with fine detailing for a sophisticated finish.<br data-end="1812" data-start="1809" />
	Design: Sleek square silhouette with signature metal accents and bold LV-engraved hinges.<br data-end="1908" data-start="1905" />
	Versatility: A statement accessory suitable for both casual and high-fashion ensembles.<br data-end="2002" data-is-only-node="" data-start="1999" />
	Durability: High-quality construction with 100% UV protection and 25% light transmission.</p>
', N'uploads-add/img_1742825342606.avif', 1, 0, 0, 0, 61, 3, CAST(N'2025-03-24T21:09:03.0000000' AS DateTime2), CAST(N'2025-03-24T21:09:03.0000000' AS DateTime2), N'uploads-add/img_1742825342647.avif', 350, 0, 350, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (9, 6, N'LV Legacy Pilot Sunglasses', N'<p>
	Part of the LV Legacy collection, the LV Legacy Pilot Sunglasses reimagine the classic aviator silhouette with contemporary sophistication. The metal rim is coated with premium Japanese acetate for durability and a refined finish, while the slim metal temples add an elegant touch. Deep black lenses enhance the luxurious appeal and provide 100% UV protection for optimal eye safety. Crafted in Japan with precision and high-quality materials, these sunglasses are a must-have for those who appreciate a seamless fusion of vintage charm and modern aesthetics.</p>
', N'<p>
	Material: Premium Japanese acetate with a sleek metal rim and temples.<br data-end="1697" data-start="1694" />
	Craftsmanship: Expertly crafted in Japan for superior quality and durability.<br data-end="1781" data-start="1778" />
	Design: Timeless aviator silhouette with a modern twist, featuring signature silver-tone metal details.<br data-end="1891" data-start="1888" />
	Versatility: Ideal for both casual and sophisticated looks, ensuring effortless elegance.<br data-end="1987" data-is-only-node="" data-start="1984" />
	Durability: High-quality construction with 100% UV protection and 13% light transmission.</p>
', N'uploads-add/img_1742825564053.avif', 1, 0, 0, 0, 52, 1, CAST(N'2025-03-24T21:12:44.0000000' AS DateTime2), CAST(N'2025-03-24T21:12:44.0000000' AS DateTime2), N'uploads-add/img_1742825564091.avif', 200, 0, 200, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (10, 6, N'The LV Hinge Sunglasses', N'<p>
	The LV Hinge Sunglasses feature a sleek and stylish small-round design, crafted from premium black acetate. This exquisite piece is enhanced with silver-tone metal details, signature studs, and engraved LV logos on the temples&mdash;an homage to the Maison&rsquo;s craftsmanship legacy. The deep black lenses not only elevate the luxurious aesthetic but also provide 100% UV protection for optimal eye care. Made in Italy, this eyewear is the ultimate accessory for those who appreciate timeless elegance with a modern edge.</p>
', N'<p>
	Material: Premium black acetate frame with silver-tone metal accents.<br data-end="1514" data-start="1511" />
	Craftsmanship: Expertly crafted in Italy with refined detailing and signature LV engravings.<br data-end="1613" data-start="1610" />
	Design: Classic small-round silhouette with bold metallic embellishments.<br data-end="1693" data-start="1690" />
	Versatility: Perfect for a sophisticated everyday look or a standout fashion statement.<br data-end="1787" data-is-only-node="" data-start="1784" />
	Durability: High-quality construction with 100% UV protection and 13% light transmission.</p>
', N'uploads-add/img_1742825668457.avif', 1, 0, 0, 0, 43, 1, CAST(N'2025-03-24T21:14:29.0000000' AS DateTime2), CAST(N'2025-03-24T21:14:29.0000000' AS DateTime2), N'uploads-add/img_1742825668496.avif', 210, 10, 189, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (11, 12, N'LV Initiales 40mm Reversible Belt', N'The Louis Vuitton LV Initiales 40mm Reversible Belt is a sophisticated and versatile accessory, blending luxury with practicality. Designed with a reversible strap, it offers two distinct looks in one – featuring the iconic Monogram canvas on one side and premium calf leather on the other. The bold LV Initiales buckle serves as a statement piece, available in various finishes like silver-tone, gold-tone, and dark ruthenium. With a width of 40mm, this belt seamlessly complements both casual and formal outfits.', N'Material: Monogram canvas & calf leather$
			Width: 40mm$
			Buckle: LV Initiales buckle in different finishes$
			Reversible: Two wearable sides for versatility$
			Style: Perfect for casual and formal wear$
			Available Colors: Black, brown, tan, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(1).png', 1, 1, 0, 0, 12, 8, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', 280, 0, 280, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (12, 12, N'LV Fiction 30mm Reversible Belt', N'The Louis Vuitton LV Fiction 30mm Reversible Belt is a refined statement piece inspired by the brands rich travel heritage. Featuring an elegant LV Fiction buckle, this belt showcases a unique oval design engraved with fine lines reminiscent of a world map. With a reversible strap, one side offers classic smooth leather, while the other features embossed Monogram canvas, allowing for versatile styling. The 30mm width ensures a sleek, modern look, perfect for both casual and formal ensembles.', N'Material: Smooth leather & embossed Monogram canvas
			Width: 30mm
			Buckle: Oval LV Fiction buckle in gold-tone or silver-tone
			Reversible: Two wearable styles for versatile looks
			Style: Ideal for formal and everyday wear
			Available Colors: Brown, black, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(3).png', 1, 1, 0, 0, 10, 10, CAST(N'2025-02-18T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', 270, 30, 189, N'30%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (13, 2, N'The Baladeur Bag', N'<p>
	The Baladeur bag perfectly blends retro aesthetics with modern elegance, drawing inspiration from early portable music players. Featuring a distinctive horizontal opening, an oversized clasp, and a transparent decorative panel at the front, this bag delivers a bold yet refined look. Crafted from premium cowhide leather and signature Monogram Canvas, it offers both luxury and durability. A standout detail is the headphone-shaped accessory on the zipper pull, a creative touch by Artistic Director Pharrell Williams, paying homage to classic headphones. With an adjustable and detachable strap, this bag seamlessly adapts to various styling preferences.</p>
', N'<p>
	Material: Premium cowhide leather and iconic Monogram Canvas.<br data-end="1873" data-start="1870" />
	Craftsmanship: Expertly crafted with meticulous leather detailing and durable fabric lining.<br data-end="1972" data-start="1969" />
	Design: Retro-inspired silhouette featuring a horizontal opening, oversized clasp, and transparent front panel.<br data-end="2090" data-start="2087" />
	Hardware: Elegant gold-tone metal accents with a headphone-shaped zipper pull.<br data-end="2175" data-is-only-node="" data-start="2172" />
	Versatility: Adjustable and detachable strap for multiple styling options.<br data-end="2256" data-start="2253" />
	Dimensions: 19 x 13.5 x 5.5 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742825801042.avif', 1, 0, 0, 0, 72, 1, CAST(N'2025-03-24T21:16:41.0000000' AS DateTime2), CAST(N'2025-03-24T21:16:41.0000000' AS DateTime2), N'uploads-add/img_1742825801082.avif', 495, 0, 495, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (14, 2, N'The Speedy Bandoulière 40', N'<p>
	The Speedy Bandouli&egrave;re 40 seamlessly fuses urban street style with refined Louis Vuitton elegance. Crafted from LV Blason Denim in a bold gradient orange hue, this bag showcases exquisite embroidered LV logos, adding a dynamic visual effect. Designed under the creative vision of Pharrell Williams, it features standout details such as a removable headphone-shaped charm and a leather name tag, making it a unique collector&rsquo;s piece. The spacious interior includes a secure main compartment and multiple inner pockets for effortless organization. With a detachable and adjustable strap, this bag offers versatility, allowing it to be styled in multiple ways.</p>
', N'<p>
	Material: LV Blason Denim with premium calf leather accents.<br data-end="1898" data-start="1895" />
	Craftsmanship: Exquisitely embroidered LV logos with a refined cotton lining.<br data-end="1982" data-start="1979" />
	Design: A structured yet contemporary silhouette with a gradient color effect.<br data-end="2067" data-start="2064" />
	Hardware: Silver-tone metal details with a removable headphone charm and leather name tag.<br data-end="2164" data-is-only-node="" data-start="2161" />
	Versatility: Adjustable and detachable strap for shoulder or crossbody wear.<br data-end="2247" data-start="2244" />
	Dimensions: 40 x 26 x 23 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826031184.avif', 1, 0, 0, 0, 70, 3, CAST(N'2025-03-24T21:20:31.0000000' AS DateTime2), CAST(N'2025-03-24T21:20:31.0000000' AS DateTime2), N'uploads-add/img_1742826031224.avif', 375, 0, 375, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (15, 2, N'The Gaston Bag', N'<p>
	The Gaston Bag is a refined yet functional accessory, crafted from Monogram Canvas and premium Taiga leather. Despite its compact size, it offers ample space for daily essentials. The refreshing sky-blue colorway is complemented by a black textile lining, adding a touch of contrast and sophistication. A standout feature is the detachable zipped cardholder attached to the adjustable fabric strap, designed for seamless contactless transactions. The removable and adjustable strap enhances versatility, making it a perfect companion for both casual outings and travel.</p>
', N'<p>
	Material: Monogram Canvas and Taiga calf leather.<br data-end="1606" data-start="1603" />
	Craftsmanship: Expertly crafted with a durable textile lining.<br data-end="1675" data-start="1672" />
	Design: Compact, modern silhouette in a refreshing summer blue.<br data-end="1745" data-start="1742" />
	Hardware: Silver-tone metal accents with a detachable zipped cardholder.<br data-end="1824" data-is-only-node="" data-start="1821" />
	Versatility: Adjustable and removable fabric strap for various carrying options.<br data-end="1911" data-start="1908" />
	Dimensions: 22 x 14.5 x 4.5 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826160923.avif', 1, 0, 0, 0, 70, 1, CAST(N'2025-03-24T21:22:41.0000000' AS DateTime2), CAST(N'2025-03-24T21:22:41.0000000' AS DateTime2), N'uploads-add/img_1742826160927.avif', 430, 10, 387, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (16, 2, N'The Trapezoidal Pulse Bag', N'<p>
	Modern and refined, the Pulse bag captivates with its distinctive trapezoidal silhouette and vibrant blue color. Crafted from premium Monogram Canvas and Taiga leather, it strikes the perfect balance between elegance and functionality. The magnetic flap closure allows for effortless access, while the front zip pocket provides quick storage for essentials. Inside, a black textile lining and an additional compartment ensure organized space. Designed for everyday versatility, the adjustable strap ensures a comfortable fit for any occasion.</p>
', N'<p>
	Material: Monogram Canvas and Taiga calf leather.<br data-end="1632" data-start="1629" />
	Craftsmanship: Sleek and structured with a premium textile lining.<br data-end="1705" data-start="1702" />
	Design: Contemporary trapezoidal shape in an eye-catching blue hue.<br data-end="1779" data-start="1776" />
	Hardware: Silver-tone metal details with a secure magnetic flap closure.<br data-end="1858" data-is-only-node="" data-start="1855" />
	Versatility: Adjustable shoulder strap for customized wear.<br data-end="1924" data-start="1921" />
	Dimensions: 22.5 x 16 x 5 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826281730.avif', 1, 0, 0, 0, 82, 1, CAST(N'2025-03-24T21:24:42.0000000' AS DateTime2), CAST(N'2025-03-24T21:24:42.0000000' AS DateTime2), N'uploads-add/img_1742826281771.avif', 300, 0, 300, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (17, 9, N'The LV Vers Damier Cap', N'<p>
	Blending luxury streetwear aesthetics with contemporary craftsmanship, the LV Vers Damier cap is crafted from high-quality Denim and adorned with the distinctive LV Vers Damier pattern. The rich blue hue enhances its modern appeal, while the &quot;Marque L.Vuitton D&eacute;pos&eacute;e&quot; inscription subtly reinforces the brand&rsquo;s legacy. Designed for ultimate comfort, the adjustable back strap ensures a secure and tailored fit. Made in Italy, this cap is the perfect accessory to elevate any casual or statement look.</p>
', N'<p>
	Material: 100% Cotton Denim.<br data-end="1614" data-start="1611" />
	Craftsmanship: Premium Italian-made construction with meticulous detailing.<br data-end="1696" data-start="1693" />
	Design: Iconic LV Vers Damier motif on a stylish blue Denim base.<br data-end="1768" data-start="1765" />
	Hardware: Adjustable back strap for a customizable fit.<br data-end="1830" data-is-only-node="" data-start="1827" />
	Versatility: A perfect blend of casual and luxury aesthetics.<br data-end="1898" data-start="1895" />
	Dimensions: 26 x 16 x 28 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826436811.avif', 1, 0, 0, 0, 74, 1, CAST(N'2025-03-24T21:27:17.0000000' AS DateTime2), CAST(N'2025-03-24T21:27:17.0000000' AS DateTime2), N'uploads-add/img_1742826436815.avif', 200, 0, 200, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (18, 9, N'The LV Aerogram Cap', N'<p>
	Refined and sophisticated, the LV Aerogram cap is reimagined in a stylish light blue hue, offering a contemporary and polished look. Crafted from 100% Cotton, its five-panel construction ensures a comfortable and breathable fit. The signature LV Aerogram metal logo, with its smooth matte finish, adds a luxurious touch. Designed for versatility, this cap pairs effortlessly with belts and leather goods from the Aerogram collection, making it an ideal statement piece for a sleek and coordinated outfit. Made in Italy, this cap is a must-have for those who appreciate subtle elegance and premium craftsmanship.</p>
', N'<p>
	Material: 100% Cotton.<br data-end="1785" data-start="1782" />
	Craftsmanship: Italian-made with a refined five-panel construction.<br data-end="1859" data-start="1856" />
	Design: Contemporary light blue shade with a smooth matte LV Aerogram metal logo.<br data-end="1947" data-start="1944" />
	Hardware: Premium metal detailing for a sophisticated touch.<br data-end="2014" data-is-only-node="" data-start="2011" />
	Versatility: Pairs effortlessly with Aerogram leather goods and accessories.<br data-end="2097" data-start="2094" />
	Dimensions: 18 x 16 x 30 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826558558.avif', 1, 0, 0, 0, 65, 1, CAST(N'2025-03-24T21:29:19.0000000' AS DateTime2), CAST(N'2025-03-24T21:29:19.0000000' AS DateTime2), N'uploads-add/img_1742826558597.avif', 220, 0, 220, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (19, 9, N'Denim Cap', N'<p>
	Crafted from faded-effect Denim, this stylish six-panel cap boasts meticulous white contrast stitching, enhancing its refined aesthetic. The embroidered Louis Vuitton logo in a classic style on the visor adds an elegant yet effortlessly chic touch. Made from 100% Lyocell, this cap is lightweight and breathable, making it the perfect accessory for sunny days. The trendy blue Denim shade ensures versatility, effortlessly complementing casual outfits. Made in Italy, this cap embodies quality craftsmanship and timeless appeal.</p>
', N'<p>
	Material: 100% Lyocell.<br data-end="1708" data-start="1705" />
	Craftsmanship: Italian-made six-panel construction with detailed white stitching.<br data-end="1796" data-start="1793" />
	Design: Faded Denim effect with a classic embroidered Louis Vuitton logo on the visor.<br data-end="1889" data-start="1886" />
	Hardware: Elegant contrast stitching for a refined finish.<br data-end="1954" data-is-only-node="" data-start="1951" />
	Versatility: A perfect addition to casual outfits for a stylish, effortless look.<br data-end="2042" data-start="2039" />
	Dimensions: 25 x 16 x 26 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826648966.avif', 1, 0, 0, 0, 30, 2, CAST(N'2025-03-24T21:30:49.0000000' AS DateTime2), CAST(N'2025-03-24T21:30:49.0000000' AS DateTime2), N'uploads-add/img_1742826649005.avif', 190, 0, 190, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (20, 9, N'The LV Staples Cap', N'<p>
	The LV Staples cap introduces premium Japanese Denim, a new high-quality fabric in Maison&rsquo;s latest apparel collection. Designed from 100% Cotton, it ensures both comfort and durability. A standout feature is the beige suede label with an embossed LV logo, adding a touch of refined elegance. The adjustable fit makes it versatile for various styles, from casual to formal occasions. A must-have accessory to enhance any wardrobe. Made in Italy, guaranteeing exceptional craftsmanship and durability.</p>
', N'<p>
	Material: Premium Japanese Denim, 100% Cotton.<br data-end="1633" data-start="1630" />
	Craftsmanship: Italian-made with exquisite tailoring and a luxurious suede label.<br data-end="1721" data-start="1718" />
	Design: Features a beige suede label with an embossed LV logo.<br data-end="1794" data-start="1791" />
	Hardware: Adjustable fit for personalized comfort.<br data-end="1851" data-start="1848" />
	Versatility: A stylish and adaptable cap for both casual and formal wear.<br data-end="1931" data-start="1928" />
	Dimensions: 26 x 16 x 28 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826749290.avif', 1, 0, 0, 0, 31, 2, CAST(N'2025-03-24T21:32:29.0000000' AS DateTime2), CAST(N'2025-03-24T21:32:29.0000000' AS DateTime2), N'uploads-add/img_1742826749329.avif', 230, 0, 230, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (21, 10, N'Louis Vuitton Escale Platinum 39mm – Automatic Haute Horology', N'The epitome of fine watchmaking, the Louis Vuitton Escale Platinum 39mm is an automatic masterpiece featuring a luxurious platinum case, exquisite craftsmanship, and a precision-engineered movement for the most discerning collectors.', N'Movement: Automatic, self-winding mechanism
Case: Solid Platinum
Diameter: 39mm
Crystal: Scratch-resistant Sapphire
Strap: Premium leather with an adjustable clasp', N'assets/images/clothes/images/Watch/watch(1).png', 1, 1, 0, 0, 14, 36, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(1.4).avif', 35.5, 0, 35.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (22, 10, N'Louis Vuitton Tambour Carpe Diem 39mm – Rose Gold Edition', N'A symbol of timeless elegance, the Louis Vuitton Tambour Carpe Diem in 39mm combines a rose gold case, a sophisticated two-tone dial, and a luxurious black leather strap. A masterpiece of craftsmanship, this watch is the perfect blend of heritage and modernity.', N'Movement: Swiss Automatic
Case: 18k Rose Gold
Diameter: 39mm
Crystal: Sapphire, scratch-resistant
Strap: Black leather, adjustable clasp', N'assets/images/clothes/images/Watch/watch(2).png', 1, 0, 0, 0, 45, 5, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(2.2).jpg', 475, 0, 475, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (23, 10, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'The Louis Vuitton Tambour Steel Blue 40mm is a modern expression of fine watchmaking. Featuring a stainless steel case, a deep blue dial, and a precision automatic movement, this timepiece is the perfect blend of sophistication and functionality.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(3).png', 1, 1, 1, 5, 42, 8, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(3.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (24, 10, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'The Louis Vuitton Tambour Steel Grey 40mm represents a perfect blend of modern design and luxury craftsmanship. Featuring a sleek stainless steel case, a sophisticated grey dial, and Swiss automatic movement, this timepiece is the epitome of elegance and precision.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(4).png', 1, 1, 0, 0, 40, 10, CAST(N'2025-02-24T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Watch/watch(4.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (25, 9, N'The LV Signature Cap', N'<p>
	Designed by Pharrell Williams, the LV Signature Cap reinterprets Maison&rsquo;s heritage with a contemporary, energetic flair. The cap stands out with a handwritten-style &quot;VUITTON&quot; embroidery in white, contrasting beautifully against the sand-colored fabric. At the back, a woven &quot;Marque Louis Vuitton D&eacute;pos&eacute;e&quot; label adds a refined touch, while the adjustable strap ensures a comfortable fit for various styles. Crafted from 100% Cotton and Made in Italy, this cap embodies premium craftsmanship and modern luxury.</p>
', N'<p data-end="1713" data-start="1685">
	Material: Premium Japanese Denim, 100% Cotton.<br data-end="1633" data-start="1630" />
	Craftsmanship: Italian-made with exquisite tailoring and a luxurious suede label.<br data-end="1721" data-start="1718" />
	Design: Features a beige suede label with an embossed LV logo.<br data-end="1794" data-start="1791" />
	Hardware: Adjustable fit for personalized comfort.<br data-end="1851" data-start="1848" />
	Versatility: A stylish and adaptable cap for both casual and formal wear.<br data-end="1931" data-start="1928" />
	Dimensions: 26 x 16 x 28 cm (Length x Height x Width).</p>
', N'uploads-add/img_1742826936740.avif', 1, 0, 0, 0, 79, 1, CAST(N'2025-03-24T21:35:37.0000000' AS DateTime2), CAST(N'2025-03-24T22:34:02.0000000' AS DateTime2), N'uploads-add/img_1742826936779.avif', 305, 0, 305, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (27, 2, N'Elegant Leather Handbag', N'<p>
	Elevate your style with this premium leather handbag, designed for modern elegance and functionality. Crafted from high-quality materials, this bag combines sophistication with practicality, making it a perfect companion for work, travel, or special occasions.</p>
', N'<p>
	Material: High-quality genuine leather with a smooth and luxurious finish. Lining: Soft fabric lining to protect your belongings. Compartments: Spacious main compartment with multiple interior pockets for organized storage. Closure: Secure zippered closure to keep your essentials safe. Straps: Adjustable and detachable shoulder strap for versatile carrying options. Hardware: Gold-tone metal accents for a sophisticated touch. Dimensions: (Provide actual size here, e.g., 30cm x 25cm x 12cm)</p>
', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(5).avif', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-27T09:05:31.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(2).avif', 89.99, 0, 89.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (28, 2, N'Luxe Classic Leather Handbag', N'<p>
	A sophisticated and timeless leather handbag designed for elegance and practicality. Perfect for work, travel, or special occasions, this bag offers both style and functionality.</p>
', N'<p>
	Material: Premium genuine leather with a smooth, high-quality finish. Lining: Soft fabric lining for added durability and protection. Compartments: Spacious main compartment with multiple pockets for organization. Closure: Secure zipper closure to keep your essentials safe. Straps: Comfortable top handles and an adjustable, detachable shoulder strap for versatility. Hardware: Gold-tone metal accents for a luxurious touch. Dimensions: (Provide actual size here, e.g., 32cm x 28cm x 14cm)</p>
', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', 1, 0, 0, 0, 49, 1, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:20:35.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', 100, 0, 100, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (29, 9, N'Classic Cotton Baseball Cap', N'A stylish and versatile baseball cap designed for everyday wear. Made from high-quality materials, this cap offers comfort, durability, and a timeless look, perfect for casual outings or outdoor activities.', N'Material: Premium cotton fabric for breathability and all-day comfort.
Closure: Adjustable strap for a customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added comfort.
Brim: Curved brim for sun protection and a stylish appearance.', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', 1, 1, 0, 0, 4, 46, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', 29.99, 0, 29.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (30, 9, N'Premium Cotton Dad Hat', N' A comfortable and stylish dad hat designed for everyday wear. Made from soft, breathable cotton, this hat provides a relaxed fit and a classic look, perfect for casual outings, sports, or outdoor adventures.', N'Material: 100% high-quality cotton for maximum comfort.
Closure: Adjustable metal buckle strap for a secure and customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added durability and comfort.
Brim: Pre-curved brim for sun protection and a laid-back style.', N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', 1, 1, 0, 0, 19, 31, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-02-26T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', 24.99, 0, 24.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (31, 5, N'Elegant Gold-Plated Necklace', N'<p>
	A stunning and timeless necklace designed to add elegance to any outfit. Crafted with high-quality materials, this piece is perfect for both everyday wear and special occasions.</p>
', N'<p>
	Material: High-quality gold-plated stainless steel for durability and shine. Design: Minimalist and elegant, suitable for layering or wearing alone. Closure: Secure lobster clasp for easy wear. Length: Adjustable chain for a perfect fit. Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.</p>
', N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:21:21.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', 49.99, 0, 49.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (32, 1, N'Luxury Gold-Plated Bracelet', N'<p>
	A beautifully crafted gold-plated bracelet designed to add a touch of sophistication and elegance to any outfit. Perfect for both everyday wear and special occasions, this piece is a must-have for jewelry lovers.</p>
', N'<p>
	Material: Premium gold-plated stainless steel for durability and shine. Design: Elegant and minimalist style, suitable for layering or wearing alone. Closure: Secure clasp for a comfortable and adjustable fit. Size: Available in multiple sizes for a perfect fit. Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.</p>
', N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', 1, 0, 0, 0, 43, 7, CAST(N'2025-02-25T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T12:50:35.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', 39.99, 0, 39.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (43, 2, N'Classic Leather Carry Bag', N'<p>
	A stylish and spacious leather carry bag, perfect for everyday use. Designed with premium materials for durability and elegance.</p>
', N'<p>
	Material: Genuine leather for a luxurious feel Capacity: Spacious interior with multiple compartments Features: Adjustable shoulder strap, secure zip closure, and reinforced handles Colors: Available in black, brown, and tan Care: Wipe clean with a damp cloth, use leather conditioner for maintenance</p>
', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', 1, 0, 0, 0, 29, 6, CAST(N'2025-03-09T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:20:22.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(3).avif', 129.99, 0, 129.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (44, 2, N'Premium Leather Tote Bag', N'<p>
	An elegant and functional leather tote bag, designed for both style and practicality. Ideal for daily use with a spacious interior and classic design.</p>
', N'<p>
	Material: High-quality genuine leather for durability Capacity: Large interior with multiple compartments for easy organization Features: Comfortable shoulder straps, secure magnetic closure, and reinforced stitching Colors: Available in black, cognac, and deep red Care: Use a leather conditioner regularly, wipe clean with a soft cloth</p>
', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', 1, 0, 0, 0, 19, 5, CAST(N'2025-03-10T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:20:59.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).avif', 110, 20, 88, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (55, 5, N'Luxury Pearl Pendant Necklace', N'<p>
	Add a touch of elegance to any outfit with this stunning pearl pendant necklace.</p>
', N'<p>
	Material: High-quality freshwater pearl with a sterling silver chain Fit: Adjustable chain length for a perfect fit Features: Classic design with a timeless appeal Colors: Available in white pearl, rose gold, and silver Care: Avoid direct contact with water and perfume, store in a jewelry box</p>
', N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', 1, 0, 0, 0, 19, 4, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:17:40.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(1).avif', 120, 10, 108, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (56, 1, N'Elegant Gold-Plated Bracelet', N'<p>
	Enhance your style with this exquisite gold-plated bracelet, perfect for any occasion.</p>
', N'<p>
	Material: Premium gold-plated sterling silver for a luxurious shine Fit: Adjustable chain with a secure clasp for a comfortable fit Features: Minimalist yet elegant design, suitable for layering Colors: Available in classic gold, rose gold, and silver Care: Avoid direct contact with water and chemicals, store in a jewelry pouch</p>
', N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', 1, 0, 0, 0, 19, 4, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-25T13:18:31.0000000' AS DateTime2), N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(1).avif', 120, 0, 120, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (63, 9, N'Classic Baseball Cap', N'A stylish and comfortable baseball cap, perfect for everyday wear and outdoor activities.', N'Material: High-quality cotton fabric for breathability and durability  
Fit: Adjustable strap for a perfect fit  
Features: Classic six-panel design with ventilation eyelets  
Colors: Available in black, navy, beige, and red  
Care: Hand wash recommended, air dry only', N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', 1, 0, 0, 0, 19, 8, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(1).avif', 25, 5, 23.75, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (64, 9, N'Premium Wool Beanie', N'A warm and stylish wool beanie, perfect for cold weather and casual wear.', N'Material: Soft and high-quality wool for warmth and comfort  
Fit: Stretchable design, suitable for all head sizes  
Features: Thick knit texture with a minimalist look  
Colors: Available in black, gray, navy, and olive green  
Care: Hand wash in cold water, lay flat to dry', N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', 1, 0, 0, 0, 19, 8, CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), CAST(N'2025-03-11T00:00:00.0000000' AS DateTime2), N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(1).avif', 30, 5, 28.5, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (68, 2, N'Additional Louis Vuitton Signature Handbag Details', N'<div>
	This handbag not only exemplifies luxury but also offers exceptional functionality. Every detail has been meticulously designed&mdash;from the secure closure to the thoughtfully arranged compartments that cater to your everyday essentials. Embossed LV accents and signature hardware further highlight its exclusive appeal, ensuring that this piece stands out in any setting, whether at work or during leisure. Closure: Secure zipper or magnetic snap for added safety</div>
<div>
	&nbsp; &nbsp;Interior Organization: Dedicated pockets for smartphone, wallet, and other essentials$</div>
<div>
	&nbsp; &nbsp; Accents: Subtle embossed LV logo and premium hardware detailing$</div>
<div>
	&nbsp; &nbsp; Versatility: Ideal for both professional settings and casual outings$</div>
<div>
	&nbsp; &nbsp; Authenticity: Comes with a certificate of authenticity for exclusive editions$&#39;</div>
', N'<div>
	Interior Organization: Dedicated pockets for smartphone, wallet, and other essentials.</div>
<div>
	Accents: Subtle embossed LV logo and premium hardware detailing.</div>
<div>
	Versatility: Ideal for both professional settings and casual outings.</div>
<div>
	Authenticity: Comes with a certificate of authenticity for exclusive editions.</div>
', N'uploads-add/img_1742824331802.avif', 1, 0, 0, 0, 55, 1, CAST(N'2025-03-24T20:52:12.0000000' AS DateTime2), CAST(N'2025-03-24T20:52:12.0000000' AS DateTime2), N'uploads-add/img_1742824331804.avif', 125, 0, 125, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (69, 2, N'Louis Vuitton Celestial Elegance Bag', N'<div>
	&nbsp;The Louis Vuitton Signature Handbag redefines contemporary elegance with a bold yet refined design that effortlessly blends practicality with high-fashion appeal. Crafted with precision from the finest materials, this handbag features innovative design elements and meticulous detailing that highlight the iconic LV heritage. Its versatile silhouette makes it an ideal companion for both dynamic urban lifestyles and sophisticated evening events.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Exquisite Fine-Grain Leather with Monogram Accent.<br />
	Craftsmanship: Artisanal hand-finished details ensuring lasting quality.</div>
<div>
	Interior: Customizable compartments and secure pockets for optimal organization.</div>
<div>
	Hardware: Sleek, polished metal embellishments for a modern touch.</div>
<div>
	Versatility: Designed for seamless transitions from daywear to evening glamour.</div>
<div>
	&nbsp;</div>
', N'uploads-add/img_1742824647656.avif', 1, 0, 0, 0, 79, 1, CAST(N'2025-03-24T20:57:28.0000000' AS DateTime2), CAST(N'2025-03-24T20:57:28.0000000' AS DateTime2), N'uploads-add/img_1742824647656.avif', 189, 0, 189, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (70, 2, N'Louis Vuitton Celestial Elegance Bag in Pinkish Gray', N'<div>
	The Louis Vuitton Celestial Elegance Bag in Pinkish Gray combines modern charm with subtle sophistication. The unique blend of soft pink and gray hues creates a harmonious and delicate color palette, perfect for those who appreciate understated luxury. Crafted from premium fine-grain leather with a soft matte finish, this bag reflects both timeless elegance and contemporary flair. Its refined silhouette and embossed LV accents make it an ideal accessory to elevate both everyday and special occasion outfits.&nbsp;</div>
', N'<div>
	Color: Elegant Pinkish Gray with a nuanced gradient</div>
<div>
	Material: Luxurious fine-grain leather with a soft matte finish</div>
<div>
	Design: Sleek silhouette with refined detailing and embossed LV accents</div>
<div>
	Interior: Spacious compartments with secure pockets for organization</div>
<div>
	Versatility: Perfect for professional settings, casual outings, and evening events</div>
', N'uploads-add/img_1742824843510.avif', 1, 0, 0, 0, 30, 1, CAST(N'2025-03-24T21:00:44.0000000' AS DateTime2), CAST(N'2025-03-24T21:00:44.0000000' AS DateTime2), N'uploads-add/img_1742824843512.avif', 146, 0, 146, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (71, 2, N'Louis Vuitton Rustic Heritage Bag in Brown', N'<div>
	The Louis Vuitton Rustic Heritage Bag in Brown exudes timeless sophistication with its rich, deep brown hue and classic design elements. Crafted from premium supple leather, this bag combines vintage charm with modern functionality. The warm brown color evokes a sense of heritage and enduring elegance, making it a versatile accessory for both casual outings and upscale events. Its meticulously designed compartments ensure that your essentials are always well-organized, while the refined details pay tribute to the iconic LV craftsmanship.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Rich Deep Brown.</div>
<div>
	Material: Premium Supple Leather.</div>
<div>
	Design: Vintage-inspired with modern functional accents.</div>
<div>
	Compartments: Thoughtfully designed interior pockets and secure closures.</div>
<div>
	Versatility: Ideal for daily use, professional settings, and sophisticated events.</div>
', N'uploads-add/img_1742825029941.avif', 1, 0, 0, 0, 45, 1, CAST(N'2025-03-24T21:03:50.0000000' AS DateTime2), CAST(N'2025-03-24T21:03:50.0000000' AS DateTime2), N'uploads-add/img_1742825029942.avif', 127, 0, 127, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (72, 4, N'Louis Vuitton Majestic Violet Earrings', N'<div>
	&nbsp;</div>
<div>
	The Louis Vuitton Majestic Violet Earrings are a stunning blend of luxury and artistic design. Meticulously crafted with precision, these exquisite earrings feature a captivating violet hue that exudes elegance and individuality. Designed to be both contemporary and timeless, they add a refined touch to any ensemble. Perfect for elevating everyday style or accentuating special occasion looks, these earrings reflect the iconic LV aesthetic with every delicate detail.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Striking Violet with a subtle iridescent shimmer<br />
	Material: Premium high-quality alloy with luxurious plating</div>
<div>
	Design: Intricate and modern with a timeless appeal</div>
<div>
	Style: Versatile accessory for daily wear and formal events</div>
<div>
	Versatility: Complements a range of outfits, from chic casual to sophisticated evening wear</div>
', N'uploads-add/img_1742826386007.avif', 1, 0, 0, 0, 9, 1, CAST(N'2025-03-24T21:26:26.0000000' AS DateTime2), CAST(N'2025-03-24T21:29:11.0000000' AS DateTime2), N'uploads-add/img_1742826386010.avif', 82, 0, 82, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (73, 4, N'Louis Vuitton Subtle Mist Earrings', N'<div>
	The Louis Vuitton Subtle Mist Earrings are a refined expression of modern elegance and understated luxury. Crafted with precision and designed to offer a muted silver allure, these earrings seamlessly combine timeless style with a contemporary edge. Ideal for both casual outings and formal events, they bring a subtle yet striking accent to any ensemble.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Subtle Mist (Muted Silver)<br />
	Material: Premium hypoallergenic metal with a sleek, polished finish</div>
<div>
	Design: Minimalist silhouette featuring modern detailing</div>
<div>
	Style: Perfect for both everyday wear and special occasions</div>
<div>
	Features: Lightweight construction ensuring comfortable, all-day elegance</div>
', N'uploads-add/img_1742826541398.avif', 1, 0, 0, 0, 20, 1, CAST(N'2025-03-24T21:29:01.0000000' AS DateTime2), CAST(N'2025-03-24T21:29:01.0000000' AS DateTime2), N'uploads-add/img_1742826541399.avif', 38, 18, 31.16, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (74, 4, N'Louis Vuitton Radiant Gold Earrings', N'<div>
	The Louis Vuitton Radiant Gold Earrings embody a harmonious blend of bold luxury and timeless elegance. Featuring a vibrant yellow gold hue, these earrings capture the essence of sophistication and charm. Expertly crafted with meticulous attention to detail, they are designed to enhance any look&mdash;whether it&#39;s a formal event or a chic everyday ensemble. Their radiant finish and contemporary design make them a standout accessory that reflects the iconic LV aesthetic.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Vibrant Yellow Gold with a luminous finish</div>
<div>
	Material: Premium high-quality gold-plated alloy for durability and brilliance</div>
<div>
	Design: Modern and intricate, merging classic elegance with a contemporary edge</div>
<div>
	Style: Perfect for formal occasions, upscale events, and elevating daily wear</div>
<div>
	Features: Lightweight and comfortable, ensuring all-day elegance</div>
', N'uploads-add/img_1742826687339.avif', 1, 0, 0, 0, 24, 1, CAST(N'2025-03-24T21:31:27.0000000' AS DateTime2), CAST(N'2025-03-24T21:31:27.0000000' AS DateTime2), N'uploads-add/img_1742826687341.avif', 35, 38, 21.7, N'38%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (75, 3, N'Louis Vuitton Noir Gold Ring', N'<div>
	The Louis Vuitton Noir Gold Ring is a striking fusion of bold sophistication and timeless luxury. Crafted with exceptional precision, this exquisite ring features a dramatic black finish accented by radiant gold highlights, embodying the iconic LV signature style. Its innovative design and meticulous detailing make it the perfect statement accessory for high-profile events or to add a touch of glamour to everyday ensembles.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Bold Black with Radiant Gold Accents</div>
<div>
	Material: Premium blackened metal with gold plating</div>
<div>
	Design: Contemporary and avant-garde with intricate detailing</div>
<div>
	Style: Ideal for making a striking impression at formal occasions or in daily wear</div>
<div>
	Features: Polished finish that beautifully contrasts dark and light tones</div>
', N'uploads-add/img_1742826828342.avif', 1, 0, 0, 0, 17, 1, CAST(N'2025-03-24T21:33:48.0000000' AS DateTime2), CAST(N'2025-03-24T21:33:48.0000000' AS DateTime2), N'uploads-add/img_1742826828343.avif', 82, 10, 73.8, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (76, 3, N'Louis Vuitton Golden Diamond Ring', N'<div>
	The Louis Vuitton Golden Diamond Ring exudes opulence and refined elegance. This exquisite ring is masterfully crafted from high-quality gold and adorned with dazzling, certified diamonds that capture the light from every angle. Its sophisticated design and impeccable craftsmanship make it a perfect statement piece for special occasions, engagements, or when you want to add a touch of luxury to your everyday style.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Lustrous Gold with Sparkling Diamonds</div>
<div>
	Material: Premium Gold with Certified, High-Quality Diamonds</div>
<div>
	Design: Intricate detailing that combines classic elegance with a modern twist</div>
<div>
	Style: Ideal for formal events, engagements, and upscale evening wear</div>
<div>
	Features: Expert diamond setting for maximum brilliance and enduring beauty</div>
<div>
	&nbsp;</div>
', N'uploads-add/img_1742826970689.avif', 1, 0, 0, 0, 4, 1, CAST(N'2025-03-24T21:36:11.0000000' AS DateTime2), CAST(N'2025-03-24T21:36:11.0000000' AS DateTime2), N'uploads-add/img_1742826970691.avif', 289, 0, 289, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (77, 3, N'Louis Vuitton Rose Gold Ring', N'<div>
	The Louis Vuitton Rose Gold Ring epitomizes refined elegance and contemporary luxury. Crafted from high-quality rose gold, this exquisite ring features a graceful design that blends classic charm with modern sophistication. Its warm, blush-toned finish makes it a versatile accessory, perfect for adding a touch of subtle glamour to both everyday outfits and special occasions.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Warm Rose Gold</div>
<div>
	Material: Premium High-Quality Rose Gold<br />
	Design: Elegant, modern design with intricate dtailing</div>
<div>
	Style: Ideal for both casual wear and formal events</div>
<div>
	Features: Polished finish that enhances its luminous appeal</div>
', N'uploads-add/img_1742827245016.avif', 1, 0, 0, 0, 22, 1, CAST(N'2025-03-24T21:40:45.0000000' AS DateTime2), CAST(N'2025-03-25T13:23:19.0000000' AS DateTime2), N'uploads-add/img_1742827245017.avif', 63, 5, 59.85, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (78, 3, N'Louis Vuitton Rosy Diamond Ring', N'<div>
	The Louis Vuitton Rosy Diamond Ring is a captivating blend of luxurious gold and exquisite pink diamonds. This remarkable piece is crafted from premium gold and features meticulously set pink diamonds that radiate a soft, enchanting glow. Its unique design effortlessly merges classic elegance with a modern twist, making it a perfect accessory for both glamorous occasions and everyday sophistication.</div>
<div>
	N&#39;Color: Radiant Gold with Enchanting Pink Diamonds$</div>
<div>
	&nbsp; &nbsp; Material: High-quality Gold with Superior Pink Diamonds$</div>
<div>
	&nbsp; &nbsp; Design: Intricate and contemporary, balancing timeless luxury with modern flair$</div>
<div>
	&nbsp; &nbsp; Style: Ideal for formal events, celebrations, and as a distinctive statement piece$</div>
<div>
	&nbsp; &nbsp; Features: Expert diamond setting that ensures maximum brilliance and a stunning visual appeal$&#39;</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Radiant Gold with Enchanting Pink Diamonds</div>
<div>
	Material: High-quality Gold with Superior Pink Diamonds</div>
<div>
	Design: Intricate and contemporary, balancing timeless luxury with modern flair</div>
<div>
	Style: Ideal for formal events, celebrations, and as a distinctive statement piece</div>
<div>
	Features: Expert diamond setting that ensures maximum brilliance and a stunning visual appeal</div>
<div>
	&nbsp;</div>
', N'uploads-add/img_1742827414096.avif', 1, 0, 0, 0, 26, 1, CAST(N'2025-03-24T21:43:34.0000000' AS DateTime2), CAST(N'2025-03-24T21:43:34.0000000' AS DateTime2), N'uploads-add/img_1742827414097.avif', 152, 10, 136.8, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (79, 9, N'Louis Vuitton Midnight Elegance Hat', N'<div>
	The Louis Vuitton Midnight Elegance Hat embodies the perfect fusion of classic sophistication and contemporary style. Designed for those who appreciate timeless elegance, this sleek black hat is crafted from premium, durable materials to ensure comfort and longevity. Its minimalist design, featuring subtle signature accents, makes it an ideal accessory for both formal events and everyday wear, effortlessly elevating any ensemble with its refined simplicity.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Deep Black with a refined matte finish</div>
<div>
	Material: Premium fabric blend for exceptional durability and comfort</div>
<div>
	Design: Classic silhouette with modern detailing and signature LV accents</div>
<div>
	Style: Versatile accessory suitable for both casual and formal occasions</div>
<div>
	Features: Lightweight, breathable construction for all-day wear</div>
', N'uploads-add/img_1742827801432.avif', 1, 0, 0, 0, 29, 1, CAST(N'2025-03-24T21:50:01.0000000' AS DateTime2), CAST(N'2025-03-24T21:50:01.0000000' AS DateTime2), N'uploads-add/img_1742827801433.avif', 30, 5, 28.5, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (80, 9, N'Louis Vuitton Luxe Fedora', N'<div>
	The Louis Vuitton Luxe Fedora exudes timeless sophistication with a modern twist. This exquisitely crafted fedora is made from fine wool felt, offering a structured silhouette that enhances any outfit. Whether for formal events or elevating your everyday look, its classic design coupled with signature LV details ensures you make a refined statement wherever you go.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Rich Charcoal</div>
<div>
	Material: Fine Wool Felt</div>
<div>
	Design: Classic fedora silhouette with modern detailing</div>
<div>
	Style: Ideal for both upscale events and stylish streetwear</div>
<div>
	Features: Wide brim for sun protection and a polished finish</div>
', N'uploads-add/img_1742828044555.avif', 1, 0, 0, 0, 24, 1, CAST(N'2025-03-24T21:54:05.0000000' AS DateTime2), CAST(N'2025-03-24T21:54:15.0000000' AS DateTime2), N'uploads-add/img_1742828044556.avif', 25, 0, 25, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (81, 9, N'Louis Vuitton Urban Edge Cap', N'<div>
	The Louis Vuitton Urban Edge Cap is designed for the modern trendsetter seeking a blend of casual comfort and distinctive style. Crafted from a premium cotton blend, this cap features a sleek, minimalist design accented by the iconic LV detailing. Its contemporary silhouette makes it an ideal accessory for everyday wear, whether you&rsquo;re navigating city streets or enjoying a relaxed weekend.</div>
<div>
	&nbsp;</div>
', N'<div>
	Color: Jet Black</div>
<div>
	Material: Premium Cotton Blend</div>
<div>
	Design: Minimalist design with subtle LV accents</div>
<div>
	Style: Perfect for casual outings and urban adventures</div>
<div>
	Features: Adjustable strap for a customized, comfortable fit</div>
', N'uploads-add/img_1742828261459.avif', 1, 0, 0, 0, 22, 1, CAST(N'2025-03-24T21:57:42.0000000' AS DateTime2), CAST(N'2025-03-24T21:57:42.0000000' AS DateTime2), N'uploads-add/img_1742828261462.avif', 35, 0, 35, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (82, 12, N'Louis Vuitton Iconic Leather Belt', N'<div>
	The Louis Vuitton Iconic Leather Belt is a timeless accessory that effortlessly elevates any outfit. Expertly crafted from supple, premium leather, this belt features a sleek design accented with the signature LV buckle. Its understated elegance makes it a versatile choice for both formal occasions and everyday wear.</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Premium, supple leather</div>
<div>
	Design: Minimalist design with signature LV buckle</div>
<div>
	Style: Versatile accessory for both casual and formal wear</div>
<div>
	Features: Durable construction ensuring long-lasting performance</div>
', N'uploads-add/img_1742828815926.avif', 1, 0, 0, 0, 22, 1, CAST(N'2025-03-24T22:06:56.0000000' AS DateTime2), CAST(N'2025-03-24T22:06:56.0000000' AS DateTime2), N'uploads-add/img_1742828815928.avif', 56, 0, 56, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (83, 12, N'Louis Vuitton Signature Canvas Belt', N'<div>
	The Louis Vuitton Signature Canvas Belt is a stylish accessory that adds an urban edge to your ensemble. Crafted from the iconic Monogram canvas, this belt features a sleek, contemporary design with subtle LV accents. Ideal for both casual outings and smart-casual events, it infuses a touch of classic sophistication into every look.</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Iconic Monogram Canvas</div>
<div>
	Design: Contemporary design with subtle LV accents</div>
<div>
	Style: Effortlessly stylish for both casual and smart-casual wear</div>
<div>
	Features: Durable and lightweight construction for everyday use</div>
', N'uploads-add/img_1742829055553.avif', 1, 0, 0, 0, 11, 1, CAST(N'2025-03-24T22:10:56.0000000' AS DateTime2), CAST(N'2025-03-24T22:10:56.0000000' AS DateTime2), N'uploads-add/img_1742829055554.avif', 42, 5, 39.9, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (84, 12, N'Louis Vuitton Luxe Reversible Belt', N'<div>
	The Louis Vuitton Luxe Reversible Belt offers the ultimate in versatility with its dual-sided design. Expertly crafted from high-quality leather, this belt provides two distinct looks in one elegant accessory. Perfect for transitioning from day to night, its reversible feature ensures you always have the ideal style for any occasion.</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: High-quality leather</div>
<div>
	Design: Innovative reversible design for dual aesthetics</div>
<div>
	Style: Adaptable accessory suitable for both formal and casual occasions</div>
<div>
	Features: Adjustable fit ensuring comfort and secure wear</div>
', N'uploads-add/img_1742829137999.avif', 1, 0, 0, 0, 34, 1, CAST(N'2025-03-24T22:12:18.0000000' AS DateTime2), CAST(N'2025-03-24T22:12:18.0000000' AS DateTime2), N'uploads-add/img_1742829138000.avif', 35, 0, 35, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (85, 5, N'Louis Vuitton Celestial Pearl Necklace', N'<div>
	The Louis Vuitton Celestial Pearl Necklace combines the timeless beauty of cultured pearls with a modern design aesthetic. Its delicate chain and lustrous pearls add an elegant touch to any ensemble, perfect for both formal events and everyday sophistication.</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Cultured pearls &amp; precious metal chain</div>
<div>
	Design: Delicate chain adorned with lustrous pearls and signature LV accents</div>
<div>
	Style: Elegant accessory for both formal occasions and casual wear</div>
<div>
	Features: Adjustable length for a perfect fit</div>
', N'uploads-add/img_1742829453484.avif', 1, 0, 0, 0, 29, 1, CAST(N'2025-03-24T22:17:34.0000000' AS DateTime2), CAST(N'2025-03-24T22:17:34.0000000' AS DateTime2), N'uploads-add/img_1742829453485.avif', 152, 0, 152, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (86, 5, N'Louis Vuitton Golden Harmony Necklace', N'<div>
	The Louis Vuitton Golden Harmony Necklace embodies luxury with its radiant gold finish and intricate detailing. This statement piece adds a touch of glamour to any outfit while reflecting the refined craftsmanship of the brand.</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Premium gold-plated metal with fine detailing</div>
<div>
	Design: Intricate and contemporary design with signature LV embellishments</div>
<div>
	Style: Ideal for upscale events and elevating daily elegance</div>
<div>
	Features: Secure clasp and versatile design for multiple styling options</div>
', N'uploads-add/img_1742829520701.avif', 1, 0, 0, 0, 11, 1, CAST(N'2025-03-24T22:18:41.0000000' AS DateTime2), CAST(N'2025-03-24T22:18:41.0000000' AS DateTime2), N'uploads-add/img_1742829520702.avif', 160, 5, 152, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (87, 5, N'Louis Vuitton Timeless Diamond Necklace', N'<div>
	The Louis Vuitton Timeless Diamond Necklace features dazzling diamond accents set along a sleek, modern chain. This exquisite piece radiates sophistication and modern luxury, making it the perfect accessory for those who cherish classic beauty&nbsp;</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: High-quality diamond accents on a durable metal chain</div>
<div>
	Design: Sleek, refined design with sparkling diamond details</div>
<div>
	Style: Perfect for formal occasions and refined everyday wear</div>
<div>
	Features: Expert diamond setting ensuring maximum brilliance</div>
', N'uploads-add/img_1742829625163.avif', 1, 0, 0, 0, 4, 1, CAST(N'2025-03-24T22:20:25.0000000' AS DateTime2), CAST(N'2025-03-24T22:20:25.0000000' AS DateTime2), N'uploads-add/img_1742829625164.avif', 230, 0, 230, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (88, 1, N'Louis Vuitton Signature Cuff Bracelet', N'<div>
	The Louis Vuitton Signature Cuff Bracelet is a bold, contemporary accessory that defines modern luxury. Meticulously crafted from premium metal, its sleek design and subtle LV engravings make it a standout piece for any wardrobe.</div>
<div>
	&nbsp;</div>
', N'<div>
	Material: Premium metal with a polished finish</div>
<div>
	Design: Bold cuff design featuring subtle LV engravings</div>
<div>
	Style: Ideal for adding a modern edge to any outfit</div>
<div>
	Features: Adjustable fit for maximum comfort</div>
', N'uploads-add/img_1742829709423.avif', 1, 0, 0, 0, 9, 1, CAST(N'2025-03-24T22:21:49.0000000' AS DateTime2), CAST(N'2025-03-24T22:21:49.0000000' AS DateTime2), N'uploads-add/img_1742829709424.avif', 90, 0, 90, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (89, 1, N'Louis Vuitton Elegant Charm Bracelet', N'<p>
	The Louis Vuitton Elegant Charm Bracelet combines delicate charm with timeless sophistication. Adorned with signature motifs, this bracelet effortlessly enhances any look with its refined luxury and versatile design.</p>
', N'<div>
	Material: High-quality alloy with luxurious plating</div>
<div>
	Design: Intricate charm detailing featuring signature LV icons</div>
<div>
	Style: Versatile accessory for both casual and formal occasions</div>
<div>
	Features: Lightweight design and secure clasp for everyday wear</div>
', N'uploads-add/img_1742829772423.avif', 1, 0, 0, 0, 14, 1, CAST(N'2025-03-24T22:22:52.0000000' AS DateTime2), CAST(N'2025-03-24T22:22:52.0000000' AS DateTime2), N'uploads-add/img_1742829772424.avif', 95, 0, 95, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (90, 1, N'Louis Vuitton Luxe Bangle Bracelet', N'<p>
	The Louis Vuitton Luxe Bangle Bracelet is a chic, minimalist accessory that embodies modern elegance. Crafted with precision, its sleek silhouette and refined details make it an essential statement piece for any collection.</p>
', N'<div>
	Material: Premium metal with a brushed finish</div>
<div>
	Design: Minimalist bangle design with subtle LV accent</div>
<div>
	Style: Perfect for layering or as a standalone statement piece</div>
<div>
	Features: Comfortable, secure fit with timeless appeal</div>
', N'uploads-add/img_1742829871336.avif', 1, 0, 0, 0, 29, 1, CAST(N'2025-03-24T22:24:31.0000000' AS DateTime2), CAST(N'2025-03-24T22:24:31.0000000' AS DateTime2), N'uploads-add/img_1742829871337.avif', 78, 0, 78, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (91, 6, N'Louis Vuitton Urban Edge Sunglasses', N'<p>
	The Louis Vuitton Urban Edge Sunglasses offer a modern twist on classic eyewear. Designed with sleek lines and contemporary detailing, they provide optimal UV protection while adding a bold, urban edge to your style.</p>
', N'<div>
	Material: High-quality acetate frame with metal accents</div>
<div>
	Design: Bold, modern design featuring signature LV elements</div>
<div>
	Style: Ideal for urban lifestyles and outdoor adventures</div>
<div>
	Features: UV-protective lenses and adjustable fit</div>
', N'uploads-add/img_1742829952926.avif', 1, 0, 0, 0, 9, 1, CAST(N'2025-03-24T22:25:53.0000000' AS DateTime2), CAST(N'2025-03-24T22:25:53.0000000' AS DateTime2), N'uploads-add/img_1742829952927.avif', 26, 0, 26, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (92, 6, N'Louis Vuitton Signature Aviator Sunglasses', N'<p>
	The Louis Vuitton Signature Aviator Sunglasses combine iconic design with exceptional quality. Their classic aviator shape is reimagined with contemporary detailing, making them a must-have accessory for both casual outings and upscale events.</p>
', N'<div>
	Material: Premium metal frame with durable construction</div>
<div>
	Design: Timeless aviator style with signature LV branding</div>
<div>
	Style: Perfect for everyday wear and high-end occasions</div>
<div>
	Features: High-performance lenses with full UV protection</div>
', N'uploads-add/img_1742830016184.avif', 1, 0, 0, 0, 29, 1, CAST(N'2025-03-24T22:26:56.0000000' AS DateTime2), CAST(N'2025-03-24T22:26:56.0000000' AS DateTime2), N'uploads-add/img_1742830016185.avif', 49.99, 0, 49.99, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (93, 6, N'Louis Vuitton Luxe Cat Eye Sunglasses', N'<p>
	The Louis Vuitton Luxe Cat Eye Sunglasses exude sophistication with their distinctive design and bold silhouette. Designed to capture attention, these sunglasses elevate your style while offering exceptional clarity and UV protection for all-day wear.</p>
', N'<div>
	Material: Superior acetate frame with metallic embellishments</div>
<div>
	Design: Chic cat eye shape with modern LV accents</div>
<div>
	Style: Ideal for fashion-forward individuals and stylish occasions</div>
<div>
	Features: Polarized lenses ensuring optimal clarity and protection</div>
', N'uploads-add/img_1742830087338.avif', 1, 0, 0, 0, 19, 1, CAST(N'2025-03-24T22:28:07.0000000' AS DateTime2), CAST(N'2025-03-24T22:28:07.0000000' AS DateTime2), N'uploads-add/img_1742830087339.avif', 28, 0, 28, N'NEW')
GO
SET IDENTITY_INSERT [dbo].[products_images] ON 

INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime), 1)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime), 2)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (11, N'assets/images/clothes/images/Men/belt/belt_men(1.2).png', CAST(N'2025-03-07T16:30:21.630' AS DateTime), CAST(N'2025-03-07T16:30:21.630' AS DateTime), 3)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (12, N'assets/images/clothes/images/Men/belt/belt_men(3).png', CAST(N'2025-03-07T16:32:19.600' AS DateTime), CAST(N'2025-03-07T16:32:19.600' AS DateTime), 4)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (12, N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', CAST(N'2025-03-07T16:32:19.600' AS DateTime), CAST(N'2025-03-07T16:32:19.600' AS DateTime), 5)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940802.avif', CAST(N'2025-03-24T20:45:40.970' AS DateTime), CAST(N'2025-03-24T20:45:40.970' AS DateTime), 129)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940844.avif', CAST(N'2025-03-24T20:45:40.973' AS DateTime), CAST(N'2025-03-24T20:45:40.973' AS DateTime), 130)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940847.avif', CAST(N'2025-03-24T20:45:40.973' AS DateTime), CAST(N'2025-03-24T20:45:40.973' AS DateTime), 131)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620871.avif', CAST(N'2025-03-24T20:57:00.963' AS DateTime), CAST(N'2025-03-24T20:57:00.963' AS DateTime), 136)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620876.avif', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 137)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620878.avif', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 138)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620881.webp', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 139)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742598.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 140)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742602.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 141)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742604.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 142)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742606.avif', CAST(N'2025-03-24T20:59:02.687' AS DateTime), CAST(N'2025-03-24T20:59:02.687' AS DateTime), 143)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342606.avif', CAST(N'2025-03-24T21:09:02.727' AS DateTime), CAST(N'2025-03-24T21:09:02.727' AS DateTime), 154)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342647.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 155)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342648.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 156)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342651.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 157)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668457.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 162)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668496.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 163)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668499.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 164)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668501.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 165)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801042.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 166)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801082.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 167)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801085.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 168)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801087.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 169)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801089.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 170)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936740.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 205)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936779.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 206)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936782.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 207)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936784.avif', CAST(N'2025-03-24T21:35:36.863' AS DateTime), CAST(N'2025-03-24T21:35:36.863' AS DateTime), 208)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 15)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 16)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 17)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 18)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 19)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 20)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.7).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 21)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 22)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 23)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 24)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 25)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 26)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 27)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 28)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 29)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 30)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 31)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 32)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 33)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 34)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 35)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 36)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843510.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 209)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843512.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 210)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843513.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 211)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843514.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 212)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843516.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 213)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687339.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 219)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 37)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 38)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 39)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 40)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 41)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 42)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 43)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 44)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225804.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 150)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225808.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 151)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225809.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 152)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225812.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 153)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687341.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 220)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 50)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 51)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 52)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 53)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 54)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 55)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 56)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 57)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 58)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 59)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 60)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 61)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 62)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 63)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 64)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 65)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 66)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 67)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 68)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 69)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 70)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687343.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 221)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970689.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 222)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970691.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 223)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970692.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 224)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970694.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 225)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245016.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 226)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245017.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 227)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414096.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 228)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414097.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 229)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044555.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 230)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044556.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 231)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044559.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 232)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829137999.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 233)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138000.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 234)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138001.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 235)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871336.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 236)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871337.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 237)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647656.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 238)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647657.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 239)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647659.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 240)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541398.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 241)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541399.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 242)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940802.avif', CAST(N'2025-03-24T20:45:40.970' AS DateTime), CAST(N'2025-03-24T20:45:40.970' AS DateTime), 129)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801432.avif', CAST(N'2025-03-24T21:50:01.483' AS DateTime), CAST(N'2025-03-24T21:50:01.483' AS DateTime), 243)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801433.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 244)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801436.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 245)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801437.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 246)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801438.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 247)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261459.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 248)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261462.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 249)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261463.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 250)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055553.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 251)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055554.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 252)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055555.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 253)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453484.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 254)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453485.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 255)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453486.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 256)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772423.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 257)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772424.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 258)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016184.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 259)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016185.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 260)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016187.avif', CAST(N'2025-03-24T22:26:56.227' AS DateTime), CAST(N'2025-03-24T22:26:56.227' AS DateTime), 261)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087338.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 262)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087339.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 263)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087340.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 264)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331802.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 265)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331804.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 266)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331806.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 267)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331808.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 268)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331809.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 269)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828342.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 270)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828343.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 271)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828345.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 272)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828346.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 273)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625163.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 274)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625164.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 275)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952926.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 276)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 72)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 73)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 74)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 75)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 76)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 77)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952927.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 277)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952928.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 278)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029941.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 279)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029942.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 280)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029943.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 281)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029944.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 282)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386007.avif', CAST(N'2025-03-24T21:26:26.073' AS DateTime), CAST(N'2025-03-24T21:26:26.073' AS DateTime), 283)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386010.avif', CAST(N'2025-03-24T21:26:26.080' AS DateTime), CAST(N'2025-03-24T21:26:26.080' AS DateTime), 284)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815926.avif', CAST(N'2025-03-24T22:06:55.970' AS DateTime), CAST(N'2025-03-24T22:06:55.970' AS DateTime), 285)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815928.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 286)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815930.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 287)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520701.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 288)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520702.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 289)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709423.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 290)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709424.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 291)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843510.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 292)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843512.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 293)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843513.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 294)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843514.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 295)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843516.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 296)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 78)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 79)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 80)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 81)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 82)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943913.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 171)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943953.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 172)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943954.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 173)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943957.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 174)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687339.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 302)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687341.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 303)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687343.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 304)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970689.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 305)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970691.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 306)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970692.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 307)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970694.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 308)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245016.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 309)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245017.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 310)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414096.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 311)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414097.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 312)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044555.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 313)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044556.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 314)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044559.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 315)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829137999.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 316)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138000.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 317)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138001.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 318)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871336.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 319)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871337.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 320)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647656.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 321)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647657.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 322)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647659.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 323)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541398.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 324)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541399.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 325)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801432.avif', CAST(N'2025-03-24T21:50:01.483' AS DateTime), CAST(N'2025-03-24T21:50:01.483' AS DateTime), 326)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801433.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 327)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801436.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 328)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801437.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 329)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801438.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 330)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261459.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 331)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261462.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 332)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261463.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 333)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055553.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 334)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055554.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 335)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055555.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 336)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453484.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 337)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453485.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 338)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453486.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 339)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031184.avif', CAST(N'2025-03-24T21:20:31.303' AS DateTime), CAST(N'2025-03-24T21:20:31.303' AS DateTime), 175)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031224.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 176)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031226.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 177)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031228.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 178)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436811.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 188)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436815.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 189)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436817.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 190)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436820.avif', CAST(N'2025-03-24T21:27:16.907' AS DateTime), CAST(N'2025-03-24T21:27:16.907' AS DateTime), 191)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772423.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 340)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772424.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 341)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016184.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 342)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016185.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 343)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016187.avif', CAST(N'2025-03-24T22:26:56.227' AS DateTime), CAST(N'2025-03-24T22:26:56.227' AS DateTime), 344)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087338.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 345)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087339.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 346)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087340.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 347)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331802.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 348)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331804.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 349)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331806.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 350)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 95)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 96)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 97)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 98)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 99)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 100)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 101)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331808.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 351)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331809.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 352)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828342.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 353)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828343.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 354)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828345.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 355)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828346.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 356)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625163.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 357)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625164.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 358)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952926.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 359)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952927.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 360)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952928.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 361)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029941.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 362)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029942.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 363)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 109)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029943.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 364)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029944.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 365)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386007.avif', CAST(N'2025-03-24T21:26:26.073' AS DateTime), CAST(N'2025-03-24T21:26:26.073' AS DateTime), 366)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386010.avif', CAST(N'2025-03-24T21:26:26.080' AS DateTime), CAST(N'2025-03-24T21:26:26.080' AS DateTime), 367)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815926.avif', CAST(N'2025-03-24T22:06:55.970' AS DateTime), CAST(N'2025-03-24T22:06:55.970' AS DateTime), 368)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815928.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 369)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815930.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 370)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520701.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 371)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520702.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 372)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709423.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 373)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709424.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 374)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 110)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 111)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 112)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 113)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 114)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (5, N'uploads-add/img_1742824980180.avif', CAST(N'2025-03-24T21:03:00.290' AS DateTime), CAST(N'2025-03-24T21:03:00.290' AS DateTime), 144)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (5, N'uploads-add/img_1742824980182.avif', CAST(N'2025-03-24T21:03:00.293' AS DateTime), CAST(N'2025-03-24T21:03:00.293' AS DateTime), 145)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825124996.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 146)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125035.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 147)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125037.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 148)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125039.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 149)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564053.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 158)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564091.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 159)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564094.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 160)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564097.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 161)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826648966.avif', CAST(N'2025-03-24T21:30:49.070' AS DateTime), CAST(N'2025-03-24T21:30:49.070' AS DateTime), 197)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649005.avif', CAST(N'2025-03-24T21:30:49.070' AS DateTime), CAST(N'2025-03-24T21:30:49.070' AS DateTime), 198)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649007.avif', CAST(N'2025-03-24T21:30:49.073' AS DateTime), CAST(N'2025-03-24T21:30:49.073' AS DateTime), 199)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649009.avif', CAST(N'2025-03-24T21:30:49.073' AS DateTime), CAST(N'2025-03-24T21:30:49.073' AS DateTime), 200)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749290.avif', CAST(N'2025-03-24T21:32:29.417' AS DateTime), CAST(N'2025-03-24T21:32:29.417' AS DateTime), 201)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749329.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 202)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749332.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 203)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749334.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 204)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160923.avif', CAST(N'2025-03-24T21:22:41.020' AS DateTime), CAST(N'2025-03-24T21:22:41.020' AS DateTime), 179)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160927.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 180)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160929.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 181)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160931.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 182)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160934.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 183)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281730.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 184)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281771.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 185)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281772.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 186)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281775.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 187)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558558.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 192)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558597.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 193)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558599.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 194)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558601.avif', CAST(N'2025-03-24T21:29:18.667' AS DateTime), CAST(N'2025-03-24T21:29:18.667' AS DateTime), 195)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558603.avif', CAST(N'2025-03-24T21:29:18.667' AS DateTime), CAST(N'2025-03-24T21:29:18.667' AS DateTime), 196)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940844.avif', CAST(N'2025-03-24T20:45:40.973' AS DateTime), CAST(N'2025-03-24T20:45:40.973' AS DateTime), 130)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (1, N'uploads-add/img_1742823940847.avif', CAST(N'2025-03-24T20:45:40.973' AS DateTime), CAST(N'2025-03-24T20:45:40.973' AS DateTime), 131)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620871.avif', CAST(N'2025-03-24T20:57:00.963' AS DateTime), CAST(N'2025-03-24T20:57:00.963' AS DateTime), 136)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620876.avif', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 137)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620878.avif', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 138)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (3, N'uploads-add/img_1742824620881.webp', CAST(N'2025-03-24T20:57:00.967' AS DateTime), CAST(N'2025-03-24T20:57:00.967' AS DateTime), 139)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742598.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 140)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742602.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 141)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742604.avif', CAST(N'2025-03-24T20:59:02.683' AS DateTime), CAST(N'2025-03-24T20:59:02.683' AS DateTime), 142)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (4, N'uploads-add/img_1742824742606.avif', CAST(N'2025-03-24T20:59:02.687' AS DateTime), CAST(N'2025-03-24T20:59:02.687' AS DateTime), 143)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342606.avif', CAST(N'2025-03-24T21:09:02.727' AS DateTime), CAST(N'2025-03-24T21:09:02.727' AS DateTime), 154)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342647.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 155)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342648.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 156)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (8, N'uploads-add/img_1742825342651.avif', CAST(N'2025-03-24T21:09:02.730' AS DateTime), CAST(N'2025-03-24T21:09:02.730' AS DateTime), 157)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668457.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 162)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668496.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 163)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668499.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 164)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (10, N'uploads-add/img_1742825668501.avif', CAST(N'2025-03-24T21:14:28.600' AS DateTime), CAST(N'2025-03-24T21:14:28.600' AS DateTime), 165)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801042.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 166)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801082.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 167)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801085.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 168)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801087.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 169)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (13, N'uploads-add/img_1742825801089.avif', CAST(N'2025-03-24T21:16:41.167' AS DateTime), CAST(N'2025-03-24T21:16:41.167' AS DateTime), 170)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936740.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 205)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936779.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 206)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936782.avif', CAST(N'2025-03-24T21:35:36.860' AS DateTime), CAST(N'2025-03-24T21:35:36.860' AS DateTime), 207)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (25, N'uploads-add/img_1742826936784.avif', CAST(N'2025-03-24T21:35:36.863' AS DateTime), CAST(N'2025-03-24T21:35:36.863' AS DateTime), 208)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 15)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 16)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 17)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 18)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 19)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 20)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (21, N'assets/images/clothes/images/Watch/watch(1.7).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 21)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 22)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 23)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 24)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 25)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 26)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 27)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (22, N'assets/images/clothes/images/Watch/watch(2.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 28)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 29)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 30)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 31)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 32)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 33)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 34)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 35)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (23, N'assets/images/clothes/images/Watch/watch(3.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 36)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843510.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 209)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843512.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 210)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843513.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 211)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843514.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 212)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843516.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 213)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687339.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 219)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4).png', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 37)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.1).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 38)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.2).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 39)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.3).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 40)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.4).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 41)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.5).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 42)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.6).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 43)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (24, N'assets/images/clothes/images/Watch/watch(4.7).jpg', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 44)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225804.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 150)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225808.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 151)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225809.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 152)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (7, N'uploads-add/img_1742825225812.avif', CAST(N'2025-03-24T21:07:05.893' AS DateTime), CAST(N'2025-03-24T21:07:05.893' AS DateTime), 153)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687341.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 220)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 45)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 46)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 47)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 48)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (27, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 49)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 50)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 51)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 52)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 53)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (28, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 54)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 55)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(5).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 56)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 57)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 58)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 59)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (29, N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 60)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 61)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 62)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 63)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (30, N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 64)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 65)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 66)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(3).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 67)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (31, N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(4).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 68)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 69)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (32, N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', CAST(N'2025-03-07T17:13:29.527' AS DateTime), CAST(N'2025-03-07T17:13:29.527' AS DateTime), 70)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687343.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 221)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970689.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 222)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970691.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 223)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970692.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 224)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970694.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 225)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245016.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 226)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245017.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 227)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414096.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 228)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414097.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 229)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044555.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 230)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044556.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 231)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044559.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 232)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829137999.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 233)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138000.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 234)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138001.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 235)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871336.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 236)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871337.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 237)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647656.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 238)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647657.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 239)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647659.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 240)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541398.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 241)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541399.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 242)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801432.avif', CAST(N'2025-03-24T21:50:01.483' AS DateTime), CAST(N'2025-03-24T21:50:01.483' AS DateTime), 243)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801433.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 244)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801436.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 245)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801437.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 246)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801438.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 247)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261459.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 248)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261462.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 249)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261463.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 250)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055553.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 251)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055554.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 252)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055555.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 253)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453484.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 254)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453485.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 255)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453486.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 256)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772423.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 257)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772424.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 258)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016184.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 259)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016185.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 260)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016187.avif', CAST(N'2025-03-24T22:26:56.227' AS DateTime), CAST(N'2025-03-24T22:26:56.227' AS DateTime), 261)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087338.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 262)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087339.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 263)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087340.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 264)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331802.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 265)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331804.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 266)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331806.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 267)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331808.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 268)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331809.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 269)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828342.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 270)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828343.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 271)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828345.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 272)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828346.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 273)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625163.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 274)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625164.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 275)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952926.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 276)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 72)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 73)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 74)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(4).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 75)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(5).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 76)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (43, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(3)/hand_bag(6).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 77)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952927.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 277)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952928.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 278)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029941.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 279)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029942.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 280)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029943.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 281)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029944.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 282)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386007.avif', CAST(N'2025-03-24T21:26:26.073' AS DateTime), CAST(N'2025-03-24T21:26:26.073' AS DateTime), 283)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386010.avif', CAST(N'2025-03-24T21:26:26.080' AS DateTime), CAST(N'2025-03-24T21:26:26.080' AS DateTime), 284)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815926.avif', CAST(N'2025-03-24T22:06:55.970' AS DateTime), CAST(N'2025-03-24T22:06:55.970' AS DateTime), 285)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815928.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 286)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815930.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 287)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520701.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 288)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520702.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 289)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709423.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 290)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709424.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 291)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843510.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 292)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843512.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 293)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843513.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 294)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843514.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 295)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (70, N'uploads-add/img_1742824843516.avif', CAST(N'2025-03-24T21:00:43.553' AS DateTime), CAST(N'2025-03-24T21:00:43.553' AS DateTime), 296)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 78)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(1).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 79)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 80)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(3).avif', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 81)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (44, N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(4)/hand_bag(2).webp', CAST(N'2025-03-09T18:00:00.000' AS DateTime), CAST(N'2025-03-09T18:00:00.000' AS DateTime), 82)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943913.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 171)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943953.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 172)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943954.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 173)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (2, N'uploads-add/img_1742825943957.avif', CAST(N'2025-03-24T21:19:04.033' AS DateTime), CAST(N'2025-03-24T21:19:04.033' AS DateTime), 174)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687339.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 302)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687341.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 303)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (74, N'uploads-add/img_1742826687343.avif', CAST(N'2025-03-24T21:31:27.380' AS DateTime), CAST(N'2025-03-24T21:31:27.380' AS DateTime), 304)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970689.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 305)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970691.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 306)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970692.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 307)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (76, N'uploads-add/img_1742826970694.avif', CAST(N'2025-03-24T21:36:10.730' AS DateTime), CAST(N'2025-03-24T21:36:10.730' AS DateTime), 308)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245016.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 309)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (77, N'uploads-add/img_1742827245017.avif', CAST(N'2025-03-24T21:40:45.057' AS DateTime), CAST(N'2025-03-24T21:40:45.057' AS DateTime), 310)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414096.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 311)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (78, N'uploads-add/img_1742827414097.avif', CAST(N'2025-03-24T21:43:34.133' AS DateTime), CAST(N'2025-03-24T21:43:34.133' AS DateTime), 312)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044555.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 313)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044556.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 314)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (80, N'uploads-add/img_1742828044559.avif', CAST(N'2025-03-24T21:54:04.597' AS DateTime), CAST(N'2025-03-24T21:54:04.597' AS DateTime), 315)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829137999.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 316)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138000.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 317)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (84, N'uploads-add/img_1742829138001.avif', CAST(N'2025-03-24T22:12:18.040' AS DateTime), CAST(N'2025-03-24T22:12:18.040' AS DateTime), 318)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871336.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 319)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (90, N'uploads-add/img_1742829871337.avif', CAST(N'2025-03-24T22:24:31.377' AS DateTime), CAST(N'2025-03-24T22:24:31.377' AS DateTime), 320)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647656.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 321)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647657.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 322)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (69, N'uploads-add/img_1742824647659.avif', CAST(N'2025-03-24T20:57:27.693' AS DateTime), CAST(N'2025-03-24T20:57:27.693' AS DateTime), 323)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541398.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 324)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (73, N'uploads-add/img_1742826541399.avif', CAST(N'2025-03-24T21:29:01.437' AS DateTime), CAST(N'2025-03-24T21:29:01.437' AS DateTime), 325)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801432.avif', CAST(N'2025-03-24T21:50:01.483' AS DateTime), CAST(N'2025-03-24T21:50:01.483' AS DateTime), 326)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801433.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 327)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801436.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 328)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801437.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 329)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (79, N'uploads-add/img_1742827801438.avif', CAST(N'2025-03-24T21:50:01.490' AS DateTime), CAST(N'2025-03-24T21:50:01.490' AS DateTime), 330)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261459.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 331)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261462.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 332)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (81, N'uploads-add/img_1742828261463.avif', CAST(N'2025-03-24T21:57:41.503' AS DateTime), CAST(N'2025-03-24T21:57:41.503' AS DateTime), 333)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055553.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 334)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055554.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 335)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (83, N'uploads-add/img_1742829055555.avif', CAST(N'2025-03-24T22:10:55.590' AS DateTime), CAST(N'2025-03-24T22:10:55.590' AS DateTime), 336)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453484.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 337)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453485.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 338)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (85, N'uploads-add/img_1742829453486.avif', CAST(N'2025-03-24T22:17:33.523' AS DateTime), CAST(N'2025-03-24T22:17:33.523' AS DateTime), 339)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031184.avif', CAST(N'2025-03-24T21:20:31.303' AS DateTime), CAST(N'2025-03-24T21:20:31.303' AS DateTime), 175)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031224.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 176)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031226.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 177)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (14, N'uploads-add/img_1742826031228.avif', CAST(N'2025-03-24T21:20:31.307' AS DateTime), CAST(N'2025-03-24T21:20:31.307' AS DateTime), 178)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436811.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 188)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436815.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 189)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436817.avif', CAST(N'2025-03-24T21:27:16.903' AS DateTime), CAST(N'2025-03-24T21:27:16.903' AS DateTime), 190)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (17, N'uploads-add/img_1742826436820.avif', CAST(N'2025-03-24T21:27:16.907' AS DateTime), CAST(N'2025-03-24T21:27:16.907' AS DateTime), 191)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772423.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 340)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (89, N'uploads-add/img_1742829772424.avif', CAST(N'2025-03-24T22:22:52.457' AS DateTime), CAST(N'2025-03-24T22:22:52.457' AS DateTime), 341)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016184.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 342)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016185.avif', CAST(N'2025-03-24T22:26:56.223' AS DateTime), CAST(N'2025-03-24T22:26:56.223' AS DateTime), 343)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (92, N'uploads-add/img_1742830016187.avif', CAST(N'2025-03-24T22:26:56.227' AS DateTime), CAST(N'2025-03-24T22:26:56.227' AS DateTime), 344)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087338.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 345)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087339.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 346)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (93, N'uploads-add/img_1742830087340.avif', CAST(N'2025-03-24T22:28:07.373' AS DateTime), CAST(N'2025-03-24T22:28:07.373' AS DateTime), 347)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331802.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 348)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331804.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 349)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331806.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 350)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(4).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 95)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 96)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 97)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (55, N'assets/images/clothes/images/Women/jewelry1/jewelry(4)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 98)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 99)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 100)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (56, N'assets/images/clothes/images/Women/jewelry1/jewelry(5)/jewelry(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 101)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331808.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 351)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (68, N'uploads-add/img_1742824331809.avif', CAST(N'2025-03-24T20:52:11.850' AS DateTime), CAST(N'2025-03-24T20:52:11.850' AS DateTime), 352)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828342.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 353)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828343.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 354)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828345.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 355)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (75, N'uploads-add/img_1742826828346.avif', CAST(N'2025-03-24T21:33:48.383' AS DateTime), CAST(N'2025-03-24T21:33:48.383' AS DateTime), 356)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625163.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 357)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (87, N'uploads-add/img_1742829625164.avif', CAST(N'2025-03-24T22:20:25.200' AS DateTime), CAST(N'2025-03-24T22:20:25.200' AS DateTime), 358)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952926.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 359)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952927.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 360)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (91, N'uploads-add/img_1742829952928.avif', CAST(N'2025-03-24T22:25:52.960' AS DateTime), CAST(N'2025-03-24T22:25:52.960' AS DateTime), 361)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029941.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 362)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029942.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 363)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 109)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029943.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 364)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (71, N'uploads-add/img_1742825029944.avif', CAST(N'2025-03-24T21:03:49.980' AS DateTime), CAST(N'2025-03-24T21:03:49.980' AS DateTime), 365)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386007.avif', CAST(N'2025-03-24T21:26:26.073' AS DateTime), CAST(N'2025-03-24T21:26:26.073' AS DateTime), 366)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (72, N'uploads-add/img_1742826386010.avif', CAST(N'2025-03-24T21:26:26.080' AS DateTime), CAST(N'2025-03-24T21:26:26.080' AS DateTime), 367)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815926.avif', CAST(N'2025-03-24T22:06:55.970' AS DateTime), CAST(N'2025-03-24T22:06:55.970' AS DateTime), 368)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815928.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 369)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (82, N'uploads-add/img_1742828815930.avif', CAST(N'2025-03-24T22:06:55.973' AS DateTime), CAST(N'2025-03-24T22:06:55.973' AS DateTime), 370)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520701.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 371)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (86, N'uploads-add/img_1742829520702.avif', CAST(N'2025-03-24T22:18:40.737' AS DateTime), CAST(N'2025-03-24T22:18:40.737' AS DateTime), 372)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709423.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 373)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (88, N'uploads-add/img_1742829709424.avif', CAST(N'2025-03-24T22:21:49.460' AS DateTime), CAST(N'2025-03-24T22:21:49.460' AS DateTime), 374)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 110)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (63, N'assets/images/clothes/images/Women/Hat1/hat(3)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 111)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(1).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 112)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(2).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 113)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (64, N'assets/images/clothes/images/Women/Hat1/hat(4)/hat(3).avif', CAST(N'2025-03-11T16:00:00.000' AS DateTime), CAST(N'2025-03-11T16:00:00.000' AS DateTime), 114)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (5, N'uploads-add/img_1742824980180.avif', CAST(N'2025-03-24T21:03:00.290' AS DateTime), CAST(N'2025-03-24T21:03:00.290' AS DateTime), 144)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (5, N'uploads-add/img_1742824980182.avif', CAST(N'2025-03-24T21:03:00.293' AS DateTime), CAST(N'2025-03-24T21:03:00.293' AS DateTime), 145)
GO
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825124996.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 146)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125035.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 147)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125037.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 148)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (6, N'uploads-add/img_1742825125039.avif', CAST(N'2025-03-24T21:05:25.113' AS DateTime), CAST(N'2025-03-24T21:05:25.113' AS DateTime), 149)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564053.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 158)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564091.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 159)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564094.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 160)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (9, N'uploads-add/img_1742825564097.avif', CAST(N'2025-03-24T21:12:44.170' AS DateTime), CAST(N'2025-03-24T21:12:44.170' AS DateTime), 161)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826648966.avif', CAST(N'2025-03-24T21:30:49.070' AS DateTime), CAST(N'2025-03-24T21:30:49.070' AS DateTime), 197)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649005.avif', CAST(N'2025-03-24T21:30:49.070' AS DateTime), CAST(N'2025-03-24T21:30:49.070' AS DateTime), 198)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649007.avif', CAST(N'2025-03-24T21:30:49.073' AS DateTime), CAST(N'2025-03-24T21:30:49.073' AS DateTime), 199)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (19, N'uploads-add/img_1742826649009.avif', CAST(N'2025-03-24T21:30:49.073' AS DateTime), CAST(N'2025-03-24T21:30:49.073' AS DateTime), 200)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749290.avif', CAST(N'2025-03-24T21:32:29.417' AS DateTime), CAST(N'2025-03-24T21:32:29.417' AS DateTime), 201)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749329.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 202)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749332.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 203)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (20, N'uploads-add/img_1742826749334.avif', CAST(N'2025-03-24T21:32:29.420' AS DateTime), CAST(N'2025-03-24T21:32:29.420' AS DateTime), 204)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160923.avif', CAST(N'2025-03-24T21:22:41.020' AS DateTime), CAST(N'2025-03-24T21:22:41.020' AS DateTime), 179)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160927.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 180)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160929.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 181)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160931.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 182)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (15, N'uploads-add/img_1742826160934.avif', CAST(N'2025-03-24T21:22:41.023' AS DateTime), CAST(N'2025-03-24T21:22:41.023' AS DateTime), 183)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281730.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 184)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281771.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 185)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281772.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 186)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (16, N'uploads-add/img_1742826281775.avif', CAST(N'2025-03-24T21:24:41.843' AS DateTime), CAST(N'2025-03-24T21:24:41.843' AS DateTime), 187)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558558.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 192)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558597.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 193)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558599.avif', CAST(N'2025-03-24T21:29:18.663' AS DateTime), CAST(N'2025-03-24T21:29:18.663' AS DateTime), 194)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558601.avif', CAST(N'2025-03-24T21:29:18.667' AS DateTime), CAST(N'2025-03-24T21:29:18.667' AS DateTime), 195)
INSERT [dbo].[products_images] ([product_id], [path], [created_at], [updated_at], [image_id]) VALUES (18, N'uploads-add/img_1742826558603.avif', CAST(N'2025-03-24T21:29:18.667' AS DateTime), CAST(N'2025-03-24T21:29:18.667' AS DateTime), 196)
SET IDENTITY_INSERT [dbo].[products_images] OFF
GO
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'it''s good', 1, 4, 5, CAST(N'2025-03-25T11:56:59.510' AS DateTime), CAST(N'2025-03-25T11:56:59.510' AS DateTime))
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'normal', 1, 18, 3, CAST(N'2025-03-25T12:12:21.333' AS DateTime), CAST(N'2025-03-25T12:12:21.333' AS DateTime))
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'amazing but i like color blue', 2, 4, 4, CAST(N'2025-03-25T14:30:36.543' AS DateTime), CAST(N'2025-03-25T14:30:36.543' AS DateTime))
INSERT [dbo].[rating] ([description], [product_id], [user_id], [number_starts], [created_at], [updated_at]) VALUES (N'comment', 23, 4, 5, CAST(N'2025-03-27T10:10:14.190' AS DateTime), CAST(N'2025-03-27T10:10:14.190' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (4, N'vietpthe180666@fpt.edu.vn', N'LYNCMWwRoJZXym+YqXkmXTs0sNM=', N'0967870138', N'Male', N'Sơn Tây, Hà Nội', N'assets/images/user/img_1743032649132.png', 1, CAST(N'2025-03-09T21:49:58.533' AS DateTime), CAST(N'2025-03-09T21:49:58.533' AS DateTime), N'1', N'Phạm Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (6, N'vietnxhe182409@fpt.edu.vn', N'0mgM7kc4OtQQrSbaiZihPbe6JoI=', N'0345004504', N'Male', N'Hai Duong', N'assets/images/user/default.jpg', 2, CAST(N'2025-03-10T20:19:27.237' AS DateTime), CAST(N'2025-03-10T20:19:27.237' AS DateTime), N'1', N'Nhu Xuan Viet', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (7, N'viethvhe180241@fpt.edu.vn', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0987654321', N'Male', N'Hung Yen', N'assets/images/user/img_1742837336612.png', 1, CAST(N'2025-03-10T22:35:52.470' AS DateTime), CAST(N'2025-03-10T22:35:52.470' AS DateTime), N'1', N'Hoang Van Viet', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (8, N'nhuxuanviet27102004@gmail.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-13T00:33:55.680' AS DateTime), CAST(N'2025-03-13T00:33:55.680' AS DateTime), N'1', N'Young XVi3t', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (9, N'louisvuittonstore102@gmail.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0967870138', N'Male', N'FPT HoaLac', N'assets/images/user/default.jpg', 1, CAST(N'2025-03-13T16:26:14.070' AS DateTime), CAST(N'2025-03-13T16:26:14.070' AS DateTime), N'0', N'ADMIN', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (10, N'user123@gmail.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0954783828', NULL, NULL, N'assets/images/user/default.jpg', 2, CAST(N'2025-03-15T00:18:44.533' AS DateTime), CAST(N'2025-03-15T00:18:44.533' AS DateTime), N'1', N'Pham Tuan Viet', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (11, N'user@example.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-15T00:23:37.790' AS DateTime), CAST(N'2025-03-15T00:23:37.790' AS DateTime), N'1', N'Nhữ Xuân Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (12, N'user0@example.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-15T00:26:06.833' AS DateTime), CAST(N'2025-03-15T00:26:06.833' AS DateTime), N'1', N'Nhữ Xuân Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (13, N'anhtungnd2004@gmail.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 2, CAST(N'2025-03-15T00:38:08.910' AS DateTime), CAST(N'2025-03-15T00:38:08.910' AS DateTime), N'1', N'Nhữ Xuân Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (14, N'user123@example.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-15T01:32:18.270' AS DateTime), CAST(N'2025-03-15T01:32:18.270' AS DateTime), N'1', N'Nhữ Xuân Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (15, N'mynthe180496@fpt.edu.vn', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0983212322', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-21T00:55:28.220' AS DateTime), CAST(N'2025-03-21T00:55:28.220' AS DateTime), N'1', N'Ngo Tra My', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (16, N'tungnmhe181969@fpt.edu.vn', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0345004504', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-24T23:09:12.650' AS DateTime), CAST(N'2025-03-24T23:09:12.650' AS DateTime), N'1', N'Nguyen Manh Tung', N's9DzmLSn9qCrxBXHJuJ4JShyJx3Sa9U-', CAST(N'2025-03-24T23:39:49.903' AS DateTime))
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (17, N'viet12@gmail.com', N'vR4J3FOANRuCHAh80jdWFygIfGA=', N'0967870138', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-25T12:00:38.370' AS DateTime), CAST(N'2025-03-25T12:00:38.370' AS DateTime), N'1', N'Phạm Việt', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (18, N'my@gmail.com', N'oRg14QLrK4nDzXNbnMpw/JPrqy0=', N'0383901165', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-25T12:05:13.790' AS DateTime), CAST(N'2025-03-25T12:05:13.790' AS DateTime), N'1', N'My Ngo', NULL, NULL)
INSERT [dbo].[users] ([id], [email], [password], [phone], [gender], [address], [avatar], [status], [created_at], [updated_at], [role], [name], [reset_token], [token_expiry]) VALUES (29, N'tuut6161@gmail.com', N'WQ8mOnk6yFnSw0c3OAlA6KJ7VSk=', N'0967870138', NULL, NULL, N'assets/images/user/default.jpg', 1, CAST(N'2025-03-27T14:17:22.363' AS DateTime), CAST(N'2025-03-27T14:17:22.363' AS DateTime), N'1', N'Phạm Việt', NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT ((0)) FOR [is_read]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (getdate()) FOR [created_at]
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
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD  CONSTRAINT [FK_notifications_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[notifications] CHECK CONSTRAINT [FK_notifications_orders]
GO
ALTER TABLE [dbo].[notifications]  WITH CHECK ADD  CONSTRAINT [FK_notifications_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[notifications] CHECK CONSTRAINT [FK_notifications_users]
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[order_details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[genders] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[genders] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[product_gender]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
