USE [LouisVuitton]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[feedback]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[genders]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[orders]    Script Date: 2/28/2025 10:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [int] NULL,
	[user_id] [int] NULL,
	[number_starts] [int] NULL,
	[total_price] [int] NULL,
	[total_product] [int] NULL,
	[status] [int] NULL,
	[total_discount] [int] NULL,
	[note] [text] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_gender]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[product_sizes]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[products]    Script Date: 2/28/2025 10:15:39 AM ******/
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
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
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
/****** Object:  Table [dbo].[products_images]    Script Date: 2/28/2025 10:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_images](
	[product_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 2/28/2025 10:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
	[number_starts] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sizes]    Script Date: 2/28/2025 10:15:39 AM ******/
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
/****** Object:  Table [dbo].[transactions]    Script Date: 2/28/2025 10:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transactions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
	[discount] [int] NULL,
	[total_price] [int] NULL,
	[name] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/28/2025 10:15:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[gender] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
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
GO
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (11, 12, N'LV Initiales 40mm Reversible Belt', N'The Louis Vuitton LV Initiales 40mm Reversible Belt is a sophisticated and versatile accessory, blending luxury with practicality. Designed with a reversible strap, it offers two distinct looks in one – featuring the iconic Monogram canvas on one side and premium calf leather on the other. The bold LV Initiales buckle serves as a statement piece, available in various finishes like silver-tone, gold-tone, and dark ruthenium. With a width of 40mm, this belt seamlessly complements both casual and formal outfits.', N'Material: Monogram canvas & calf leather
			Width: 40mm
			Buckle: LV Initiales buckle in different finishes
			Reversible: Two wearable sides for versatility
			Style: Perfect for casual and formal wear
			Available Colors: Black, brown, tan, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(1).png', 1, 0, 0, 0, 14, 6, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', 280, 0, 280, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (12, 12, N'LV Fiction 30mm Reversible Belt', N'The Louis Vuitton LV Fiction 30mm Reversible Belt is a refined statement piece inspired by the brands rich travel heritage. Featuring an elegant LV Fiction buckle, this belt showcases a unique oval design engraved with fine lines reminiscent of a world map. With a reversible strap, one side offers classic smooth leather, while the other features embossed Monogram canvas, allowing for versatile styling. The 30mm width ensures a sleek, modern look, perfect for both casual and formal ensembles.', N'Material: Smooth leather & embossed Monogram canvas
			Width: 30mm
			Buckle: Oval LV Fiction buckle in gold-tone or silver-tone
			Reversible: Two wearable styles for versatile looks
			Style: Ideal for formal and everyday wear
			Available Colors: Brown, black, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(3).png', 1, 0, 0, 0, 12, 8, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', 270, 30, 189, N'30%')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (13, 8, N'Damier Varsity Blouson', N'The Louis Vuitton Damier Varsity Blouson is a bold fusion of luxury and contemporary streetwear. Featuring the iconic Damier Buffalo plaid pattern in striking red and black, this jacket blends Western influences with the classic varsity silhouette. Crafted from premium wool jacquard, it offers warmth, durability, and effortless style. Ribbed cuffs, hem, and a button-up closure add a sporty touch, making this piece a standout in any modern wardrobe.', N'Material: High-quality wool jacquard
Pattern: Damier Buffalo plaid in red and black
Closure: Button-up front
Details: Ribbed cuffs and hem for a varsity-style fit
Style: A blend of luxury and casual streetwear
Collection: Part of the Fall-Winter 2024 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 120.5, 0, 120.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (14, 8, N'Damier Leather Blouson', N'The Louis Vuitton Damier Leather Blouson is a luxurious reinterpretation of the iconic Damier pattern, blending premium craftsmanship with contemporary design. Crafted from softly grained leather, this jacket features the striking LV Vers Damier motif, enhanced with a hand-painted effect in bold primary colors. Signature "Marque L. Vuitton Deposee" branding subtly integrates into the pattern, adding an exclusive touch. This statement piece is designed for those who appreciate high-fashion aesthetics combined with timeless quality.', N'Material: Softly grained premium leather
Pattern: LV Vers Damier motif with a hand-painted effect
Branding: "Marque L. Vuitton Deposee" signature details
Closure: Full front zip
Style: A fusion of luxury, artistry, and modern fashion
Collection: Part of the Spring-Summer 2025 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', 1, 0, 0, 0, 35, 15, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Jacket/jacket_men(2.1).png', 119.4, 0, 119.4, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (15, 7, N'Printed Short-Sleeved Silk Shirt', N'The Louis Vuitton Printed Short-Sleeved Silk Shirt is a statement piece that blends luxury with bold artistry. Made from 100% premium silk, this lightweight shirt offers a smooth and breathable feel, perfect for warm-weather styling. The vibrant Monogram and graphic prints add a modern, eye-catching touch, drawing inspiration from sailing motifs, vintage scarves, or tropical landscapes. With a relaxed fit, an open camp collar, and a button-up front, this piece is designed for both casual elegance and effortless sophistication.', N'Material: 100% pure silk, made in Italy
Design: Unique Monogram and graphic prints inspired by Louis Vuitton’s signature themes
Fit: Relaxed, short-sleeved silhouette with an open camp collar
Details: Button-up closure, lightweight feel, luxurious craftsmanship
Style: Perfect for casual outings, vacations, or layering for a high-fashion look
Collection: Part of Louis Vuitton’s seasonal ready-to-wear line', N'assets/images/clothes/images/Men/Shirt/shirt_men(1).png', 1, 1, 0, 0, 29, 21, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Shirt/shirt_men(1.1).png', 290.56, 0, 290.56, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (16, 7, N'Orange Shirt', N'The Orange Shirt is a stylish and vibrant wardrobe essential, perfect for adding a pop of color to any outfit. Crafted from high-quality fabric, it offers a comfortable fit with a breathable and lightweight feel. The classic button-up design and structured collar make it versatile for both casual and formal occasions. Whether paired with tailored trousers for a polished look or worn casually with jeans, this shirt delivers effortless elegance.', N'Material: Premium cotton, linen, or silk options available
Color: Bold and vibrant orange for a standout look
Design: Classic button-up with a structured collar
Fit: Regular or slim fit, depending on style preference
Style: Ideal for casual, business, or evening wear
Care: Easy maintenance with machine or hand wash options', N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', 1, 0, 0, 0, 32, 18, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Shirt/shirt_men(2.1).png', 100.5, 0, 100.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (17, 3, N'Footprint Soccer White', N'The LV Footprint Soccer White is a luxury sneaker from Louis Vuitton, inspired by classic soccer footwear and reimagined with high-fashion aesthetics. Crafted from premium white calf leather, it offers a sleek, sophisticated look while maintaining superior comfort. The "LVers United" logo on the tongue and the signature rubber outsole feature unique Louis Vuitton detailing, symbolizing unity and global connectivity—perfectly aligning with the theme of the Spring-Summer 2025 collection.', N'Material: High-quality white calf leather
Design: A fusion of classic soccer cleat elements with a modern luxury twist
Special Features: "LVers United" logo on the tongue; signature Louis Vuitton rubber outsole details
Color: Crisp white, versatile for various outfits
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', 1, 1, 0, 0, 32, 18, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Shoes/shoes_men(1.3).png', 120.67, 0, 120.67, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (18, 3, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'Designed by Virgil Abloh, the Louis Vuitton LV Trainer "Blue" is a fashion icon inspired by vintage basketball sneakers. This edition stands out with a unique combination of Monogram denim fabric and embossed Monogram calf leather, creating a refined contrast. Each pair takes 7 hours of meticulous hand-stitching, showcasing the brand’s commitment to craftsmanship and luxury.', N'Material: Monogram denim fabric combined with embossed Monogram calf leather
Design: A blend of classic basketball sneaker aesthetics with modern luxury elements
Special Features: LV logo on the tongue, side, and heel; "Vuitton" signature on the side; Monogram flower details on the outsole
Sole: Durable rubber outsole with Monogram flower motifs for superior grip
Manufacturing: Handmade in Italy', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', 1, 0, 0, 0, 36, 14, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Shoes/shoes_men(3.4).png', 140.99, 0, 140.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (19, 6, N'Damier Denim Wide-Leg Pants', N'The Louis Vuitton Damier Denim Wide-Leg Pants are a standout piece from the Spring-Summer 2025 collection, blending classic design with contemporary flair. Crafted from 100% organic washed denim, these pants feature the seasons distinctive LV Vers Damier motif in vibrant primary colors, inspired by the flags adorning the UNESCO rooftop garden during the collections showcase. The wide-leg silhouette offers a relaxed yet stylish fit, making it a versatile addition to any wardrobe. ', N'Material: 100% organic washed denim
Design: Wide-leg cut with the LV Vers Damier motif in primary colors
Details: Marque L. Vuitton Déposée signatures, nubuck Damier jacqueron at the back, and pearl-effect rivets in an old gold setting
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Trouser/trouser_men(1).png', 1, 0, 0, 0, 39, 11, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Trouser/trouser_men(1.1).png', 280.45, 10, 252.40499999999997, N'SALE')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (20, 6, N'Damier Flared Denim Pants', N'The Louis Vuitton Damier Flared Denim Pants combine timeless elegance with contemporary flair. Crafted from premium Japanese denim, these pants feature the iconic Damier pattern woven directly into the fabric for a textured, luxurious feel. The flared silhouette gives a stylish retro touch, elongating the legs for a sophisticated look. Subtle LV signatures on the back add an extra touch of exclusivity, making this piece a standout addition to any wardrobe.', N'Material: High-quality Japanese denim with woven Damier pattern
Design: Flared cut for a retro yet modern aesthetic
Details: Subtle LV signatures, refined stitching, and a structured waistband
Color: Classic blue denim with tonal variations for depth
Collection: Featured in Louis Vuitton’s seasonal ready-to-wear lineup', N'assets/images/clothes/images/Men/Trouser/trouser_men(2).png', 1, 0, 0, 0, 34, 16, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Men/Trouser/trouser_men(2.1).png', 267, 0, 267, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (21, 10, N'Louis Vuitton Escale Platinum 39mm – Automatic Haute Horology', N'The epitome of fine watchmaking, the Louis Vuitton Escale Platinum 39mm is an automatic masterpiece featuring a luxurious platinum case, exquisite craftsmanship, and a precision-engineered movement for the most discerning collectors.', N'Movement: Automatic, self-winding mechanism
Case: Solid Platinum
Diameter: 39mm
Crystal: Scratch-resistant Sapphire
Strap: Premium leather with an adjustable clasp', N'assets/images/clothes/images/Watch/watch(1).png', 1, 1, 0, 0, 16, 34, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Watch/watch(1.4).avif', 35.5, 0, 35.5, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (22, 10, N'Louis Vuitton Tambour Carpe Diem 39mm – Rose Gold Edition', N'A symbol of timeless elegance, the Louis Vuitton Tambour Carpe Diem in 39mm combines a rose gold case, a sophisticated two-tone dial, and a luxurious black leather strap. A masterpiece of craftsmanship, this watch is the perfect blend of heritage and modernity.', N'Movement: Swiss Automatic
Case: 18k Rose Gold
Diameter: 39mm
Crystal: Sapphire, scratch-resistant
Strap: Black leather, adjustable clasp', N'assets/images/clothes/images/Watch/watch(2).png', 1, 0, 0, 0, 47, 3, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Watch/watch(2.2).jpg', 475, 0, 475, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (23, 10, N'Louis Vuitton Tambour Steel Blue 40mm – Automatic Elegance', N'The Louis Vuitton Tambour Steel Blue 40mm is a modern expression of fine watchmaking. Featuring a stainless steel case, a deep blue dial, and a precision automatic movement, this timepiece is the perfect blend of sophistication and functionality.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(3).png', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Watch/watch(3.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (24, 10, N'Louis Vuitton Tambour Steel Grey 40mm – Timeless Precision', N'The Louis Vuitton Tambour Steel Grey 40mm represents a perfect blend of modern design and luxury craftsmanship. Featuring a sleek stainless steel case, a sophisticated grey dial, and Swiss automatic movement, this timepiece is the epitome of elegance and precision.', N'Movement: Swiss Automatic
Case: Stainless Steel
Diameter: 40mm
Crystal: Sapphire, scratch-resistant
Strap: Integrated stainless steel bracelet', N'assets/images/clothes/images/Watch/watch(4).png', 1, 0, 0, 0, 41, 9, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Watch/watch(4.2).jpg', 13.19, 0, 13.19, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (25, 5, N'Louis Vuitton Monogram Silk Shirt Dress', N'A sophisticated blend of elegance and comfort, the Louis Vuitton Monogram Silk Shirt Dress features an iconic navy monogram print on luxurious silk fabric, accented with a contrasting white vertical stripe and a stylish bow collar.', N'Material: 100% Silk
Print: Louis Vuitton Monogram
Length: Full-length
Closure: Button-down front
Collar: Bow tie detail', N'assets/images/clothes/images/Women/dress1/dress(1)/dess(3).avif', 1, 0, 0, 0, 24, 17, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/dress1/dress(1)/dess(2).avif', 4.8, 0, 4.8, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (26, 5, N'Louis Vuitton Monogram Sleeveless Polo Dress', N'A chic and sporty take on luxury fashion, the Louis Vuitton Monogram Sleeveless Polo Dress features the classic monogram print on a sleek, fitted silhouette. The contrasting black collar and gold zip closure add a refined, contemporary touch.', N'Material: Premium Cotton Blend
Print: Louis Vuitton Monogram
Fit: Slim-fit, knee-length
Closure: Gold-tone zipper at the neckline
Collar: Contrasting black polo-style', N'assets/images/clothes/images/Women/dress1/dress(2)/dess(2).avif', 1, 0, 0, 0, 12, 13, CAST(N'2025-02-24T23:46:38.627' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/dress1/dress(2)/dess(1).avif', 3.2, 0, 3.2, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (27, 2, N'Elegant Leather Handbag', N'Elevate your style with this premium leather handbag, designed for modern elegance and functionality. Crafted from high-quality materials, this bag combines sophistication with practicality, making it a perfect companion for work, travel, or special occasions.', N'Material: High-quality genuine leather with a smooth and luxurious finish.
Lining: Soft fabric lining to protect your belongings.
Compartments: Spacious main compartment with multiple interior pockets for organized storage.
Closure: Secure zippered closure to keep your essentials safe.
Straps: Adjustable and detachable shoulder strap for versatile carrying options.
Hardware: Gold-tone metal accents for a sophisticated touch.
Dimensions: (Provide actual size here, e.g., 30cm x 25cm x 12cm)', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(5).avif', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(1)/hand_bag(2).avif', 89.99, 0, 89.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (28, 2, N'Luxe Classic Leather Handbag', N'A sophisticated and timeless leather handbag designed for elegance and practicality. Perfect for work, travel, or special occasions, this bag offers both style and functionality.', N'Material: Premium genuine leather with a smooth, high-quality finish.
Lining: Soft fabric lining for added durability and protection.
Compartments: Spacious main compartment with multiple pockets for organization.
Closure: Secure zipper closure to keep your essentials safe.
Straps: Comfortable top handles and an adjustable, detachable shoulder strap for versatility.
Hardware: Gold-tone metal accents for a luxurious touch.
Dimensions: (Provide actual size here, e.g., 32cm x 28cm x 14cm)', N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(5).avif', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/Hand_Bag1/hand_bag(2)/hand_bag(3).avif', 100, 0, 100, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (29, 9, N'Classic Cotton Baseball Cap', N'A stylish and versatile baseball cap designed for everyday wear. Made from high-quality materials, this cap offers comfort, durability, and a timeless look, perfect for casual outings or outdoor activities.', N'Material: Premium cotton fabric for breathability and all-day comfort.
Closure: Adjustable strap for a customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added comfort.
Brim: Curved brim for sun protection and a stylish appearance.', N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(6).avif', 1, 1, 0, 0, 5, 45, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/Hat1/hat(1)/hat(3).avif', 29.99, 0, 29.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (30, 9, N'Premium Cotton Dad Hat', N' A comfortable and stylish dad hat designed for everyday wear. Made from soft, breathable cotton, this hat provides a relaxed fit and a classic look, perfect for casual outings, sports, or outdoor adventures.', N'Material: 100% high-quality cotton for maximum comfort.
Closure: Adjustable metal buckle strap for a secure and customizable fit.
Design: Classic six-panel construction with reinforced stitching.
Lining: Soft inner lining for added durability and comfort.
Brim: Pre-curved brim for sun protection and a laid-back style.', N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(2).avif', 1, 1, 0, 0, 20, 30, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/Hat1/hat(2)/hat(1).avif', 24.99, 0, 24.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (31, 4, N'Elegant Gold-Plated Necklace', N' A stunning and timeless necklace designed to add elegance to any outfit. Crafted with high-quality materials, this piece is perfect for both everyday wear and special occasions.', N'Material: High-quality gold-plated stainless steel for durability and shine.
Design: Minimalist and elegant, suitable for layering or wearing alone.
Closure: Secure lobster clasp for easy wear.
Length: Adjustable chain for a perfect fit.
Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.', N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(2).avif', 1, 0, 0, 0, 45, 5, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/jewelry1/jewelry(1)/jewelry(1).avif', 49.99, 0, 49.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (32, 4, N'Luxury Gold-Plated Bracelet', N' A beautifully crafted gold-plated bracelet designed to add a touch of sophistication and elegance to any outfit. Perfect for both everyday wear and special occasions, this piece is a must-have for jewelry lovers.', N'Material: Premium gold-plated stainless steel for durability and shine.
Design: Elegant and minimalist style, suitable for layering or wearing alone.
Closure: Secure clasp for a comfortable and adjustable fit.
Size: Available in multiple sizes for a perfect fit.
Hypoallergenic: Nickel-free and lead-free, safe for sensitive skin.', N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(2).avif', 1, 0, 0, 0, 44, 6, CAST(N'2025-02-25T16:07:06.853' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/jewelry1/jewelry(2)/jewelry(1).avif', 39.99, 0, 39.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (33, 7, N'Classic Cotton Button-Up Shirt', N'A timeless and versatile cotton button-up shirt, perfect for both casual and formal occasions. Designed for ultimate comfort and style, this shirt features a sleek, tailored fit with a breathable fabric that keeps you fresh all day.', N'Material: 100% premium cotton, soft and durable
Fit: Regular/slim fit with a structured collar
Features: Button-down front, long sleeves with adjustable cuffs, and a curved hem for a polished look
Colors: Available in multiple shades to suit your style
Care: Machine washable, easy to maintain', N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(4).avif', 1, 1, 0, 0, 24, 26, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/shirt1/shirt(1)/shirt(2).avif', 39.99, 0, 39.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (34, 7, N' Modern Casual Linen Shirt', N'Upgrade your wardrobe with this lightweight and breathable linen shirt, designed for effortless style and comfort. Perfect for warm weather, this shirt offers a relaxed fit and a minimalist look that pairs well with both casual and semi-formal outfits.', N'Material: 70% linen, 30% cotton for a soft, airy feel
Fit: Relaxed fit with a classic collar
Features: Button-up closure, long sleeves with roll-up option, and a slightly curved hem
Colors: Available in various neutral and pastel shades
Care: Machine washable on a gentle cycle, air dry recommended', N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(5).avif', 1, 1, 0, 0, 41, 34, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/shirt1/shirt(2)/shirt(4).avif', 44.99, 0, 44.99, NULL)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (35, 3, N'Urban Classic Leather Sneakers', N'Step into style with these sleek and durable leather sneakers, designed for both comfort and versatility. Whether youre heading to work, a night out, or a casual weekend stroll, these sneakers offer the perfect blend of sophistication and practicality.', N'Material: Premium genuine leather upper with a breathable mesh lining
Sole: Cushioned rubber sole for maximum comfort and grip
Fit: True to size with a lace-up closure for a secure fit
Features: Lightweight design, shock-absorbing insole, and anti-slip outsole
Colors: Available in classic black, white, and brown
Care: Wipe clean with a damp cloth, use leather conditioner for longevity', N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(9).avif', 1, 1, 0, 0, 18, 32, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/shoes1/shoes(1)/shoes(5).avif', 66.99, 0, 66.99, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (36, 3, N' SportFlex Running Sneakers', N'Designed for performance and everyday comfort, the SportFlex Running Sneakers provide superior cushioning and flexibility for an effortless stride. Whether youre hitting the gym, running errands, or going for a jog, these sneakers offer lightweight support and a modern, sporty look.', N'Material: Breathable mesh upper with synthetic overlays for durability
Sole: Lightweight EVA midsole with rubber outsole for traction
Fit: Snug, sock-like fit with lace-up closure for adjustable support
Features: Shock-absorbing technology, arch support, and moisture-wicking inner lining
Colors: Available in black, gray, and blue
Care: Spot clean with a damp cloth, air dry only', N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(5).avif', 1, 0, 0, 0, 43, 7, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/shoes1/shoes(20)/shoes(3).avif', 59.99, 30, 41.993, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (37, 5, N'Luxe Monogram Lounge Pants', N'Elevate your casual wear with these stylish monogram lounge pants, featuring a sophisticated all-over print for a luxurious yet relaxed look. Designed for all-day comfort, these pants are perfect for lounging at home or stepping out in effortless fashion.', N'Material: Premium cotton blend for a soft and breathable feel
Fit: Relaxed straight-leg cut with an elastic waistband for adjustable comfort
Features: Iconic monogram pattern, side pockets, and lightweight design
Colors: Classic white with black monogram print
Care: Machine washable on gentle cycle, tumble dry low', N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(5).jpg', 1, 0, 0, 0, 35, 15, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/trouser1/trouser(1)/trouser(1).jpg', 79.99, 0, 79.99, N'NEW')
INSERT [dbo].[products] ([id], [category_id], [name], [description], [sub_description], [avatar], [status], [hot], [total_ratings], [total_stars], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay], [tag]) VALUES (38, 5, N'Signature Print Relaxed Trousers', N'Upgrade your wardrobe with these stylish and comfortable printed trousers. Designed for both casual and semi-formal looks, these trousers feature a sleek all-over print that adds a touch of sophistication to any outfit. Perfect for lounging, streetwear, or pairing with a tailored top for a refined look.', N'Material: Premium cotton blend for a breathable and soft feel
Fit: Relaxed straight-leg cut with an elastic waistband for a flexible fit
Features: Elegant monogram pattern, side pockets, and lightweight fabric
Colors: White base with black designer-inspired print
Care: Machine washable on gentle cycle, do not bleach, air dry recommended', N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(5).avif', 1, 0, 0, 0, 33, 17, CAST(N'2025-02-25T22:03:29.563' AS DateTime), CAST(N'2025-02-26T00:33:14.493' AS DateTime), N'assets/images/clothes/images/Women/trouser1/trouser(2)/trouser(4).avif', 84.99, 0, 84.99, N'NEW')
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
ALTER TABLE [dbo].[products] ADD  DEFAULT (NULL) FOR [tag]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
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
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
