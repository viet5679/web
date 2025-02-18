USE [WebFashion1]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[comments]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NULL,
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
/****** Object:  Table [dbo].[feedback]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[status] [int] NULL,
	[id_user] [int] NULL,
	[name] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genders]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[keywords]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[keywords](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[status] [int] NULL,
	[hot] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monthly_sales]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monthly_sales](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[month_year] [varchar](7) NULL,
	[total_sold] [int] NULL,
	[total_revenue] [int] NULL,
	[created_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[product_gender]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[product_keywords]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_keywords](
	[product_id] [int] NOT NULL,
	[keyword_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[keyword_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_sizes]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[products]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] NOT NULL,
	[category_id] [int] NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](1000) NULL,
	[content] [nvarchar](1000) NULL,
	[avatar] [nvarchar](255) NULL,
	[status] [int] NULL,
	[hot] [int] NULL,
	[total_ratings] [int] NULL,
	[total_starts] [int] NULL,
	[stock_quantity] [int] NULL,
	[total_sold] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[hover_avatar] [nvarchar](255) NULL,
	[price] [float] NULL,
	[sale] [float] NULL,
	[total_pay] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_images]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[rating]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [text] NULL,
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
/****** Object:  Table [dbo].[sizes]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[slides]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slides](
	[name] [varchar](1) NULL,
	[avatar] [varchar](1) NULL,
	[link] [varchar](1) NULL,
	[status] [varchar](1) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transactions]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[user_type]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[create_at] [datetime] NULL,
	[update_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2/18/2025 3:24:27 PM ******/
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
/****** Object:  Table [dbo].[users_types]    Script Date: 2/18/2025 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_types](
	[user_id] [int] NULL,
	[user_type_id] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (1, N'Matching set', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (2, N'Carry bag', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (3, N'Shoes', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (4, N'Jewelry', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (5, N'Dress', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (6, N'Trouser', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (7, N'Shirt', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (8, N'Jacket', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (9, N'Hat', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (10, N'Watch', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (11, N'Toy', 1, CAST(N'2025-02-17T08:16:42.167' AS DateTime), CAST(N'2025-02-17T08:16:42.167' AS DateTime))
INSERT [dbo].[categories] ([id], [name], [status], [created_at], [updated_at]) VALUES (12, N'Belt', 1, CAST(N'2025-02-18T09:52:44.653' AS DateTime), CAST(N'2025-02-18T09:52:44.653' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[genders] ON 

INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (1, N'Women', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (2, N'Men', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
INSERT [dbo].[genders] ([id], [name], [created_at], [updated_at]) VALUES (3, N'Kids', CAST(N'2025-02-17T13:03:59.287' AS DateTime), CAST(N'2025-02-17T13:03:59.287' AS DateTime))
SET IDENTITY_INSERT [dbo].[genders] OFF
GO
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (1, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (2, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (3, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (4, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (5, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (6, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (7, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (8, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (9, 3)
INSERT [dbo].[product_gender] ([product_id], [gender_id]) VALUES (10, 3)
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
GO
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 1, 3, 1, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 25, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 26, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 27, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 28, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (3, 29, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 1, 5, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 25, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 26, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 27, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 28, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (4, 29, 3, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 6, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 7, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 8, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 9, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 10, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 11, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 12, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 13, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 14, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (7, 15, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 6, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 7, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 8, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 9, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 10, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 11, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 12, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 13, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 14, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (8, 15, 2, 0, CAST(N'2025-02-17T13:43:15.117' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (13, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (14, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (15, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (16, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 20, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 21, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 22, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 23, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (17, 24, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 20, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 21, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 22, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 23, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (18, 24, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (19, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 1, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 2, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 3, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 4, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
INSERT [dbo].[product_sizes] ([product_id], [size_id], [stock_quantity], [total_sold], [created_at]) VALUES (20, 5, 10, 0, CAST(N'2025-02-18T11:32:39.757' AS DateTime))
GO
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (1, 2, N'Stargo Natty school backpack', N'The Stargo Natty school backpack features a durable
		   , high-quality fabric that can withstand daily wear and tear. Its spacious compartments allow for easy organization of
		   books, notebooks, and school supplies', N'The Stargo Natty school backpack is designed with students in mind, 
		   offering a perfect blend of style, functionality, and durability. With ample storage space, comfortable straps, 
		   and sleek, modern designs, this backpack is the ultimate companion for students who need a reliable, everyday carry.', N'assets/images/clothes/images/Kid/balo/balo(1)/balo1(2).png', 1, 1, 0, 0, 19, 1, CAST(N'2025-02-17T08:41:59.470' AS DateTime), CAST(N'2025-02-17T08:41:59.470' AS DateTime), N'assets/images/clothes/images/Kid/balo/balo(1)/balo1(5).png', 25.65, 0, 25.65)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (2, 2, N'Sakos Bambie school backpack', N'The Sakos Bambie school backpack combines style and functionality with its sleek design. 
		   Its spacious compartments are perfect for organizing textbooks, stationery, and personal items, 
		   making it an excellent choice for students looking for a reliable and fashionable backpack.', N'The Sakos Bambie school backpack is designed to meet the needs of modern students who require both style and functionality. 
		   It features a clean, sleek design with multiple compartments, making it easy to organize and access books, stationery, and gadgets. Whether heading to class, a study session,
		   or hanging out with friends, this backpack is the perfect companion for every day.', N'assets/images/clothes/images/Kid/balo/balo(2)/balo2(1).png', 1, 1, 0, 0, 18, 2, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/balo/balo(2)/balo2(4).png', 43.5, 0, 43.5)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (3, 6, N'Fit Carpenter Jeans', N'The Loose Fit Carpenter Jeans in dark denim blue offer the perfect combination of style and comfort for kids. 
		   With a relaxed, loose fit, these jeans provide maximum freedom of movement, allowing your child to play and explore with ease. 
		   The classic dark denim color gives them a versatile, trendy look that pairs well with various outfits.', N'The Loose Fit Carpenter Jeans in dark denim blue are the ideal choice for active kids who need both style and comfort. 
		   These jeans are designed with a relaxed, loose fit that offers plenty of room for movement, making them perfect for playing, running, or hanging out with friends.', N'assets/images/clothes/images/Kid/boy/boy(1)/boy(1).jpg', 1, 1, 0, 0, 18, 1, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/boy/boy(1)/boy(1).avif', 119, 0, 119)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (4, 7, N'H&M Baski Motifli Jarse Üst', N'The Baski Motifli Jarse Üst brings a fun, stylish vibe to your wardrobe with its bold printed motif design. 
		   Perfect for everyday wear, this top features eye-catching graphics that add personality and flair to any outfit.', N'he Baski Motifli Jarse Üst brings a playful and trendy touch to any wardrobe with its unique printed motifs.
		   The vibrant and creative graphics make this top a standout piece that’s perfect for adding personality to your casual outfits. 
		   Whether you’re heading out with friends or enjoying a relaxed weekend, this top is sure to turn heads.', N'assets/images/clothes/images/Kid/girl/girl(1)/girl(1).jpg', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/girl/girl(1)/girl(1).avif', 149.76, 0, 149.76)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (5, 9, N'Knitted Hat with Koala Bear Shape', N'The Knitted Hat with Koala Bear Shape is a fun, cozy hat that features an adorable koala bear design.
		   With its soft knit fabric and charming ear details, this hat adds a playful touch to any outfit,
		   making it a perfect choice for children or anyone who loves cute accessories.', N'This Knitted Hat with Koala Bear Shape features a cute and charming koala bear design, complete with its signature ears and facial features. 
		   It’s the perfect accessory for anyone who loves animal-themed fashion and adds a playful touch to your winter wardrobe.', N'assets/images/clothes/images/Kid/hat_boy/hatboy(1).jpg', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/hat_boy/hatboy(1.1).jpg', 11.76, 0, 11.76)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (6, 9, N'Pink Knitted Hat for Girls', N'This pink knitted hat is perfect for keeping your little one warm and stylish during the colder months. 
		   Crafted from soft, high-quality knit fabric, it offers both comfort and warmth. The cute pink design adds a playful touch to any winter outfit, making it a great accessory for young girls.', N'Looking for a thoughtful gift? This pink knitted hat makes a practical and charming gift for young girls. Whether for birthdays, holidays, or just a surprise, it’s a gift they’ll love and use often.', N'assets/images/clothes/images/Kid/hat_girl/hatgirl(1).jpg', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/hat_girl/hatgirl(1).jpg', 11.76, 0, 11.76)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (7, 3, N'Active Boys Sandals', N'These Active Boys Sandals are designed to keep your little one comfortable and stylish throughout the day. 
		   Featuring a lightweight, breathable design, these sandals offer great support and ventilation. With adjustable straps for a perfect fit, they’re ideal for outdoor adventures, beach trips, or casual outings.', N'Crafted with breathable materials, these sandals ensure your child’s feet stay cool and comfortable all day long. The open-toe style promotes airflow, making them the perfect choice for warm weather.', N'assets/images/clothes/images/Kid/shoe_boy/shoeboy(1).jpg', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/shoe_boy/shoeboy(1.1).jpg', 40, 0, 40)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (8, 3, N'Boy Forest Friend Velcro Baby Shoes', N'The Boy Forest Friend Velcro Baby Shoes are a perfect blend of comfort and style for your little one. Featuring adorable forest animal designs, these shoes are lightweight, durable, and easy to wear with their Velcro straps. 
		   Ideal for exploring the world, these shoes are designed to support your baby’s feet while keeping them comfortable and secure throughout the day.', N'These shoes feature a charming forest animal theme, with cute animal faces and vibrant colors. The playful design will appeal to both kids and parents, making these shoes fun to wear while adding a touch of whimsy to any outfit.', N'assets/images/clothes/images/Kid/shoe_boy/shoeboy(2).jpg)', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/shoe_boy/shoeboy(2.1).jpg', 20.55, 0, 20.55)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (9, 11, N'Lego Adults Decorative Flower Bouquet', N'The Lego Adults Decorative Flower Bouquet is a unique and creative way to express your love for flowers and building. This set allows you to create a stunning bouquet made entirely from Lego pieces. Designed for adult builders, it’s the perfect decorative piece for any home or office, blending artistry with the fun of Lego construction.', N'This Lego set lets you build your very own beautiful flower bouquet, with vibrant colors and intricate details. From roses to daisies, each flower can be customized and assembled with various Lego pieces, offering a relaxing and satisfying building experience.', N'assets/images/clothes/images/Kid/toy/toy(1.2).png', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/toy/toy(1.1).png', 80.34, 0, 80.34)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (10, 11, N'LEGO TECHNIC: 2022 Ford Gt', N'The LEGO TECHNIC: 2022 Ford GT is an incredibly detailed model designed for advanced builders. This set allows you to recreate the iconic Ford GT with a high level of precision and realism. Featuring working parts like the opening doors, engine with moving pistons, and adjustable rear wing, this model captures the essence of the high-performance car in a way only LEGO TECHNIC can.', N'This LEGO set brings the 2022 Ford GT to life with remarkable accuracy. From the sleek bodywork to the functioning rear wing, every detail has been carefully designed to replicate the real car, offering a rewarding build that highlights the beauty of automotive engineering.', N'assets/images/clothes/images/Kid/toy/toy(2.4).png', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-17T11:49:35.723' AS DateTime), CAST(N'2025-02-17T11:49:35.723' AS DateTime), N'assets/images/clothes/images/Kid/toy/toy(2).png', 78, 0, 78)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (11, 12, N'LV Initiales 40mm Reversible Belt', N'The Louis Vuitton LV Initiales 40mm Reversible Belt is a sophisticated and versatile accessory, blending luxury with practicality. Designed with a reversible strap, it offers two distinct looks in one – featuring the iconic Monogram canvas on one side and premium calf leather on the other. The bold LV Initiales buckle serves as a statement piece, available in various finishes like silver-tone, gold-tone, and dark ruthenium. With a width of 40mm, this belt seamlessly complements both casual and formal outfits.', N'Material: Monogram canvas & calf leather
			Width: 40mm
			Buckle: LV Initiales buckle in different finishes
			Reversible: Two wearable sides for versatility
			Style: Perfect for casual and formal wear
			Available Colors: Black, brown, tan, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(1).png', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/belt/belt_men(1.1).png', 280, 0, 280)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (12, 12, N'LV Fiction 30mm Reversible Belt', N'The Louis Vuitton LV Fiction 30mm Reversible Belt is a refined statement piece inspired by the brands rich travel heritage. Featuring an elegant LV Fiction buckle, this belt showcases a unique oval design engraved with fine lines reminiscent of a world map. With a reversible strap, one side offers classic smooth leather, while the other features embossed Monogram canvas, allowing for versatile styling. The 30mm width ensures a sleek, modern look, perfect for both casual and formal ensembles.', N'Material: Smooth leather & embossed Monogram canvas
			Width: 30mm
			Buckle: Oval LV Fiction buckle in gold-tone or silver-tone
			Reversible: Two wearable styles for versatile looks
			Style: Ideal for formal and everyday wear
			Available Colors: Brown, black, and custom variations', N'assets/images/clothes/images/Men/belt/belt_men(3).png', 1, 0, 0, 0, 20, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/belt/belt_men(3.1).png', 270, 0, 270)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (13, 8, N'Damier Varsity Blouson', N'The Louis Vuitton Damier Varsity Blouson is a bold fusion of luxury and contemporary streetwear. Featuring the iconic Damier Buffalo plaid pattern in striking red and black, this jacket blends Western influences with the classic varsity silhouette. Crafted from premium wool jacquard, it offers warmth, durability, and effortless style. Ribbed cuffs, hem, and a button-up closure add a sporty touch, making this piece a standout in any modern wardrobe.', N'Material: High-quality wool jacquard
Pattern: Damier Buffalo plaid in red and black
Closure: Button-up front
Details: Ribbed cuffs and hem for a varsity-style fit
Style: A blend of luxury and casual streetwear
Collection: Part of the Fall-Winter 2024 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Jacket/jacket_men(1).png', 1720.25, 0, 1720.25)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (14, 8, N'Damier Leather Blouson', N'The Louis Vuitton Damier Leather Blouson is a luxurious reinterpretation of the iconic Damier pattern, blending premium craftsmanship with contemporary design. Crafted from softly grained leather, this jacket features the striking LV Vers Damier motif, enhanced with a hand-painted effect in bold primary colors. Signature "Marque L. Vuitton Deposee" branding subtly integrates into the pattern, adding an exclusive touch. This statement piece is designed for those who appreciate high-fashion aesthetics combined with timeless quality.', N'Material: Softly grained premium leather
Pattern: LV Vers Damier motif with a hand-painted effect
Branding: "Marque L. Vuitton Deposee" signature details
Closure: Full front zip
Style: A fusion of luxury, artistry, and modern fashion
Collection: Part of the Spring-Summer 2025 collection', N'assets/images/clothes/images/Men/Jacket/jacket_men(2).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Jacket/jacket_men(2.1).png', 1720.25, 0, 1720.25)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (15, 7, N'Printed Short-Sleeved Silk Shirt', N'The Louis Vuitton Printed Short-Sleeved Silk Shirt is a statement piece that blends luxury with bold artistry. Made from 100% premium silk, this lightweight shirt offers a smooth and breathable feel, perfect for warm-weather styling. The vibrant Monogram and graphic prints add a modern, eye-catching touch, drawing inspiration from sailing motifs, vintage scarves, or tropical landscapes. With a relaxed fit, an open camp collar, and a button-up front, this piece is designed for both casual elegance and effortless sophistication.', N'Material: 100% pure silk, made in Italy
Design: Unique Monogram and graphic prints inspired by Louis Vuitton’s signature themes
Fit: Relaxed, short-sleeved silhouette with an open camp collar
Details: Button-up closure, lightweight feel, luxurious craftsmanship
Style: Perfect for casual outings, vacations, or layering for a high-fashion look
Collection: Part of Louis Vuitton’s seasonal ready-to-wear line', N'assets/images/clothes/images/Men/Shirt/shirt_men(1).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Shirt/shirt_men(1.1).png', 1543.47, 0, 1543.47)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (16, 7, N'Orange Shirt', N'The Orange Shirt is a stylish and vibrant wardrobe essential, perfect for adding a pop of color to any outfit. Crafted from high-quality fabric, it offers a comfortable fit with a breathable and lightweight feel. The classic button-up design and structured collar make it versatile for both casual and formal occasions. Whether paired with tailored trousers for a polished look or worn casually with jeans, this shirt delivers effortless elegance.', N'Material: Premium cotton, linen, or silk options available
Color: Bold and vibrant orange for a standout look
Design: Classic button-up with a structured collar
Fit: Regular or slim fit, depending on style preference
Style: Ideal for casual, business, or evening wear
Care: Easy maintenance with machine or hand wash options', N'assets/images/clothes/images/Men/Shirt/shirt_men(2).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Shirt/shirt_men(2.1).png', 1543.47, 0, 1543.47)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (17, 3, N'Footprint Soccer White', N'The LV Footprint Soccer White is a luxury sneaker from Louis Vuitton, inspired by classic soccer footwear and reimagined with high-fashion aesthetics. Crafted from premium white calf leather, it offers a sleek, sophisticated look while maintaining superior comfort. The "LVers United" logo on the tongue and the signature rubber outsole feature unique Louis Vuitton detailing, symbolizing unity and global connectivity—perfectly aligning with the theme of the Spring-Summer 2025 collection.', N'Material: High-quality white calf leather
Design: A fusion of classic soccer cleat elements with a modern luxury twist
Special Features: "LVers United" logo on the tongue; signature Louis Vuitton rubber outsole details
Color: Crisp white, versatile for various outfits
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Shoes/shoes_men(1).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Shoes/shoes_men(1.3).png', 1143.6, 0, 1143.6)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (18, 3, N'Louis Vuitton LV Trainer "Blue" 1A9JGN', N'Designed by Virgil Abloh, the Louis Vuitton LV Trainer "Blue" is a fashion icon inspired by vintage basketball sneakers. This edition stands out with a unique combination of Monogram denim fabric and embossed Monogram calf leather, creating a refined contrast. Each pair takes 7 hours of meticulous hand-stitching, showcasing the brand’s commitment to craftsmanship and luxury.', N'Material: Monogram denim fabric combined with embossed Monogram calf leather
Design: A blend of classic basketball sneaker aesthetics with modern luxury elements
Special Features: LV logo on the tongue, side, and heel; "Vuitton" signature on the side; Monogram flower details on the outsole
Sole: Durable rubber outsole with Monogram flower motifs for superior grip
Manufacturing: Handmade in Italy', N'assets/images/clothes/images/Men/Shoes/shoes_men(3).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Shoes/shoes_men(3.4).png', 1734.78, 0, 1734.78)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (19, 6, N'Damier Denim Wide-Leg Pants', N'The Louis Vuitton Damier Denim Wide-Leg Pants are a standout piece from the Spring-Summer 2025 collection, blending classic design with contemporary flair. Crafted from 100% organic washed denim, these pants feature the seasons distinctive LV Vers Damier motif in vibrant primary colors, inspired by the flags adorning the UNESCO rooftop garden during the collections showcase. The wide-leg silhouette offers a relaxed yet stylish fit, making it a versatile addition to any wardrobe. ', N'Material: 100% organic washed denim
Design: Wide-leg cut with the LV Vers Damier motif in primary colors
Details: Marque L. Vuitton Déposée signatures, nubuck Damier jacqueron at the back, and pearl-effect rivets in an old gold setting
Collection: Spring-Summer 2025', N'assets/images/clothes/images/Men/Trouser/trouser_men(1).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Trouser/trouser_men(1.1).png', 2630.43, 0, 2630.43)
INSERT [dbo].[products] ([id], [category_id], [name], [description], [content], [avatar], [status], [hot], [total_ratings], [total_starts], [stock_quantity], [total_sold], [created_at], [updated_at], [hover_avatar], [price], [sale], [total_pay]) VALUES (20, 6, N'Damier Flared Denim Pants', N'The Louis Vuitton Damier Flared Denim Pants combine timeless elegance with contemporary flair. Crafted from premium Japanese denim, these pants feature the iconic Damier pattern woven directly into the fabric for a textured, luxurious feel. The flared silhouette gives a stylish retro touch, elongating the legs for a sophisticated look. Subtle LV signatures on the back add an extra touch of exclusivity, making this piece a standout addition to any wardrobe.', N'Material: High-quality Japanese denim with woven Damier pattern
Design: Flared cut for a retro yet modern aesthetic
Details: Subtle LV signatures, refined stitching, and a structured waistband
Color: Classic blue denim with tonal variations for depth
Collection: Featured in Louis Vuitton’s seasonal ready-to-wear lineup', N'assets/images/clothes/images/Men/Trouser/trouser_men(2).png', 1, 0, 0, 0, 50, 0, CAST(N'2025-02-18T11:21:42.840' AS DateTime), CAST(N'2025-02-18T11:21:42.840' AS DateTime), N'assets/images/clothes/images/Men/Trouser/trouser_men(2.1).png', 2300, 0, 2300)
GO
SET IDENTITY_INSERT [dbo].[sizes] ON 

INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (1, N'S', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (2, N'M', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (3, N'L', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (4, N'XL', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (5, N'XXL', CAST(N'2025-02-17T13:00:35.477' AS DateTime), CAST(N'2025-02-17T13:00:35.477' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (6, N'26', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (7, N'27', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (8, N'28', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (9, N'29', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (10, N'30', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (11, N'31', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (12, N'32', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (13, N'33', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (14, N'34', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (15, N'35', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (16, N'36', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (17, N'37', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (18, N'38', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (19, N'39', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (20, N'40', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (21, N'41', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (22, N'42', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (23, N'43', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (24, N'44', CAST(N'2025-02-17T13:22:13.457' AS DateTime), CAST(N'2025-02-17T13:22:13.457' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (25, N'Sz4(14-18kg)', CAST(N'2025-02-17T13:26:57.527' AS DateTime), CAST(N'2025-02-17T13:26:57.527' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (26, N'Sz5(19-23kg)', CAST(N'2025-02-17T13:26:57.527' AS DateTime), CAST(N'2025-02-17T13:26:57.527' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (27, N'Sz6(24-28kg)', CAST(N'2025-02-17T13:26:57.527' AS DateTime), CAST(N'2025-02-17T13:26:57.527' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (28, N'Sz7(29-34kg)', CAST(N'2025-02-17T13:26:57.527' AS DateTime), CAST(N'2025-02-17T13:26:57.527' AS DateTime))
INSERT [dbo].[sizes] ([id], [name], [created_at], [updated_at]) VALUES (29, N'Sz8(34-38kg)', CAST(N'2025-02-17T13:26:57.527' AS DateTime), CAST(N'2025-02-17T13:26:57.527' AS DateTime))
SET IDENTITY_INSERT [dbo].[sizes] OFF
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[monthly_sales]  WITH CHECK ADD FOREIGN KEY([product_id])
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
ALTER TABLE [dbo].[product_keywords]  WITH CHECK ADD FOREIGN KEY([keyword_id])
REFERENCES [dbo].[keywords] ([id])
GO
ALTER TABLE [dbo].[product_keywords]  WITH CHECK ADD FOREIGN KEY([product_id])
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
ALTER TABLE [dbo].[users_types]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[users_types]  WITH CHECK ADD FOREIGN KEY([user_type_id])
REFERENCES [dbo].[user_type] ([id])
GO
