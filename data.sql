USE [master]
GO

CREATE DATABASE [QuanLyCuaHangAnUong]
 
USE [QuanLyCuaHangAnUong]
GO

CREATE TABLE [dbo].[Account](
	[DisplayName] [nvarchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bill]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeCheckIn] [datetime] NOT NULL,
	[TimeCheckOut] [datetime] NULL,
	[IDTable] [int] NULL,
	[Status] [int] NOT NULL,
	[Discount] [int] NULL,
	[TotalPrice] [float] NOT NULL,
 CONSTRAINT [PK__Bill__3214EC279AAB5A95] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDBill] [int] NOT NULL,
	[IDFood] [int] NOT NULL,
	[Count] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTieu]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTieu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](100) NULL,
	[Info] [nvarchar](100) NULL,
	[Ngay] [datetime] NULL,
	[SoTien] [int] NULL,
 CONSTRAINT [PK_ChiTieu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Food]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
	[IDCategory] [int] NOT NULL,
	[Price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodTable]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Status] [nvarchar](10) NULL,
	[tabletype] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TableOrder]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableOrder](
	[IDTable] [int] NOT NULL,
	[TableName] [nvarchar](20) NULL,
	[SDTNguoiDat] [varchar](15) NULL,
	[TimeOrder] [datetime] NOT NULL,
	[TableOrderType] [nchar](10) NULL,
 CONSTRAINT [PK_TableOrder] PRIMARY KEY CLUSTERED 
(
	[IDTable] ASC,
	[TimeOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([DisplayName], [UserName], [Password], [type]) VALUES (N'Trần Cao Việt', N'Admin', N'1', 1)
INSERT [dbo].[Account] ([DisplayName], [UserName], [Password], [type]) VALUES (N'Nguyễn Văn An', N'Staff', N'1', 0)
INSERT [dbo].[Account] ([DisplayName], [UserName], [Password], [type]) VALUES (N'Trần Nguyễn Hà Trâm', N'staff2', N'1', 0)
INSERT [dbo].[Account] ([DisplayName], [UserName], [Password], [type]) VALUES (N'Nguyễn Huỳnh Bá Trung Kiên', N'staff3', N'staff', 0)
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (1, CAST(N'2017-10-28T19:43:35.900' AS DateTime), CAST(N'2017-10-28T19:46:50.170' AS DateTime), 3, 1, 0, 510000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (2, CAST(N'2017-10-28T19:44:46.600' AS DateTime), CAST(N'2017-10-28T19:46:44.550' AS DateTime), 2, 1, 0, 270000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (3, CAST(N'2017-10-28T19:44:56.880' AS DateTime), CAST(N'2017-10-28T19:46:47.540' AS DateTime), 5, 1, 0, 175000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (4, CAST(N'2017-10-31T08:28:07.810' AS DateTime), CAST(N'2017-10-31T08:28:14.270' AS DateTime), 6, 1, 0, 360000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (5, CAST(N'2017-11-11T13:19:37.363' AS DateTime), CAST(N'2017-11-11T13:20:21.143' AS DateTime), 3, 1, 0, 408000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (6, CAST(N'2017-11-11T13:19:39.943' AS DateTime), CAST(N'2017-11-11T13:20:18.547' AS DateTime), 2, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (7, CAST(N'2017-11-11T13:19:41.990' AS DateTime), CAST(N'2017-11-11T13:20:23.427' AS DateTime), 6, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (8, CAST(N'2017-11-11T13:19:44.070' AS DateTime), CAST(N'2017-11-11T13:20:26.380' AS DateTime), 9, 1, 0, 270000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (9, CAST(N'2017-11-11T13:22:46.260' AS DateTime), CAST(N'2017-11-11T13:30:44.540' AS DateTime), 3, 1, 0, 447000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (10, CAST(N'2017-11-11T13:22:53.633' AS DateTime), CAST(N'2017-11-11T13:27:39.177' AS DateTime), 2, 1, 0, 20000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (11, CAST(N'2017-11-11T13:24:05.733' AS DateTime), CAST(N'2017-11-11T13:27:35.317' AS DateTime), 5, 1, 0, 189000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (12, CAST(N'2017-11-11T13:30:04.013' AS DateTime), CAST(N'2017-12-09T09:47:33.140' AS DateTime), 1, 1, 0, 99000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (13, CAST(N'2017-11-11T13:30:26.700' AS DateTime), CAST(N'2017-11-11T13:30:48.187' AS DateTime), 6, 1, 0, 530000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (14, CAST(N'2017-11-11T15:29:44.857' AS DateTime), CAST(N'2017-11-13T19:42:00.130' AS DateTime), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (15, CAST(N'2017-11-13T19:42:08.467' AS DateTime), CAST(N'2017-12-08T09:32:33.493' AS DateTime), 5, 1, 0, 430000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (16, CAST(N'2017-12-08T09:32:41.757' AS DateTime), CAST(N'2017-12-08T09:32:45.140' AS DateTime), 3, 1, 0, 240000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (17, CAST(N'2017-12-09T08:43:34.090' AS DateTime), CAST(N'2017-12-09T09:47:36.557' AS DateTime), 3, 1, 0, 219000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (18, CAST(N'2017-12-09T08:43:39.130' AS DateTime), NULL, 5, 0, 0, 0)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (19, CAST(N'2017-12-09T08:43:40.947' AS DateTime), CAST(N'2017-12-09T08:43:53.773' AS DateTime), 6, 1, 0, 99000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (20, CAST(N'2017-12-13T21:23:16.040' AS DateTime), CAST(N'2017-12-13T21:23:32.880' AS DateTime), 2, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (21, CAST(N'2017-12-13T21:23:18.167' AS DateTime), CAST(N'2017-12-13T21:23:30.073' AS DateTime), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (22, CAST(N'2017-12-13T21:23:20.213' AS DateTime), CAST(N'2017-12-13T21:23:27.793' AS DateTime), 7, 1, 0, 135000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (23, CAST(N'2017-12-13T21:24:55.233' AS DateTime), CAST(N'2017-12-13T21:24:57.103' AS DateTime), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (24, CAST(N'2017-12-13T21:25:44.467' AS DateTime), CAST(N'2017-12-13T21:25:46.470' AS DateTime), 1, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (25, CAST(N'2017-12-13T21:26:19.907' AS DateTime), CAST(N'2017-12-13T21:26:21.617' AS DateTime), 2, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (26, CAST(N'2017-12-13T21:27:04.940' AS DateTime), CAST(N'2017-12-13T21:27:07.427' AS DateTime), 4, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (27, CAST(N'2017-12-13T21:30:58.863' AS DateTime), CAST(N'2017-12-13T21:31:00.557' AS DateTime), 4, 1, 0, 150000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (28, CAST(N'2017-12-13T21:31:50.410' AS DateTime), CAST(N'2017-12-13T21:31:53.400' AS DateTime), 7, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (29, CAST(N'2017-12-13T21:36:47.597' AS DateTime), CAST(N'2017-12-13T21:36:51.223' AS DateTime), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (30, CAST(N'2017-12-13T21:52:45.793' AS DateTime), CAST(N'2017-12-13T21:52:48.140' AS DateTime), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (31, CAST(N'2017-12-13T21:53:41.290' AS DateTime), CAST(N'2017-12-13T21:53:42.963' AS DateTime), 4, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (32, CAST(N'2017-12-13T21:55:17.680' AS DateTime), CAST(N'2017-12-13T21:55:24.460' AS DateTime), 4, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (33, CAST(N'2017-12-13T21:55:44.690' AS DateTime), CAST(N'2017-12-13T22:04:17.297' AS DateTime), 8, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (34, CAST(N'2017-12-14T10:25:35.147' AS DateTime), CAST(N'2017-12-14T15:20:43.667' AS DateTime), 7, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (35, CAST(N'2017-12-14T15:16:21.070' AS DateTime), CAST(N'2017-12-14T15:16:27.403' AS DateTime), 15, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (36, CAST(N'2017-12-14T15:16:33.347' AS DateTime), CAST(N'2017-12-14T15:16:37.810' AS DateTime), 15, 1, 0, 120000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (37, CAST(N'2017-12-14T15:22:42.887' AS DateTime), CAST(N'2017-12-23T20:04:31.480' AS DateTime), 10, 1, 0, 140)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (38, CAST(N'2017-12-17T08:15:02.700' AS DateTime), CAST(N'2017-12-17T08:27:31.210' AS DateTime), 3, 1, 0, 120)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (39, CAST(N'2017-12-17T08:27:56.853' AS DateTime), CAST(N'2017-12-17T08:28:42.527' AS DateTime), 4, 1, 0, 120)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (40, CAST(N'2017-12-17T08:29:43.137' AS DateTime), CAST(N'2017-12-17T08:37:12.933' AS DateTime), 3, 1, 0, 360)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (41, CAST(N'2017-12-22T11:36:30.573' AS DateTime), CAST(N'2017-12-22T11:36:33.770' AS DateTime), 6, 1, 0, 180)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (42, CAST(N'2017-12-23T20:04:47.077' AS DateTime), CAST(N'2017-12-23T20:04:54.430' AS DateTime), 3, 1, 0, 70)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (43, CAST(N'2017-12-23T20:06:34.580' AS DateTime), CAST(N'2017-12-23T20:34:18.527' AS DateTime), 8, 1, 0, 3520000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (44, CAST(N'2017-12-23T20:07:36.763' AS DateTime), CAST(N'2017-12-23T20:33:23.790' AS DateTime), 6, 1, 0, 1140000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (45, CAST(N'2017-12-23T20:34:24.750' AS DateTime), CAST(N'2017-12-23T20:34:30.567' AS DateTime), 7, 1, 0, 89000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (46, CAST(N'2017-12-23T21:11:13.497' AS DateTime), CAST(N'2018-01-03T10:49:35.410' AS DateTime), 1, 1, 0, 500000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (47, CAST(N'2018-01-03T10:49:38.193' AS DateTime), CAST(N'2018-01-03T10:49:49.967' AS DateTime), 8, 1, 0, 239000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (48, CAST(N'2018-01-03T10:50:08.240' AS DateTime), CAST(N'2018-01-03T10:50:12.477' AS DateTime), 7, 1, 0, 1000000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (49, CAST(N'2018-01-03T11:18:01.113' AS DateTime), CAST(N'2018-01-03T11:18:42.000' AS DateTime), 4, 1, 0, 1207000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (50, CAST(N'2018-01-04T14:57:39.723' AS DateTime), CAST(N'2018-01-04T14:57:52.330' AS DateTime), 4, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (51, CAST(N'2018-01-04T14:57:42.090' AS DateTime), CAST(N'2018-01-04T14:57:49.197' AS DateTime), 8, 1, 0, 229000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (52, CAST(N'2018-01-05T22:46:18.107' AS DateTime), CAST(N'2018-01-10T14:03:56.050' AS DateTime), 6, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (53, CAST(N'2018-01-05T22:46:22.603' AS DateTime), CAST(N'2018-01-10T14:03:58.720' AS DateTime), 3, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (54, CAST(N'2018-01-06T14:56:35.343' AS DateTime), CAST(N'2018-01-06T14:57:15.837' AS DateTime), 1, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (55, CAST(N'2018-01-06T14:58:36.537' AS DateTime), CAST(N'2018-01-06T14:59:02.130' AS DateTime), 1, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (56, CAST(N'2018-01-12T08:48:18.230' AS DateTime), CAST(N'2018-01-13T08:43:27.343' AS DateTime), 4, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (57, CAST(N'2018-01-13T09:47:39.607' AS DateTime), CAST(N'2018-01-13T09:47:51.060' AS DateTime), 3, 1, 0, 191000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (58, CAST(N'2018-01-13T09:47:56.427' AS DateTime), CAST(N'2018-05-05T08:32:45.367' AS DateTime), 3, 1, 0, 410500)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (59, CAST(N'2018-01-13T09:48:07.023' AS DateTime), CAST(N'2018-01-13T13:58:54.730' AS DateTime), 2, 1, 0, 50000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (60, CAST(N'2018-02-06T22:11:59.693' AS DateTime), CAST(N'2018-02-06T22:13:23.230' AS DateTime), 4, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (61, CAST(N'2018-02-06T22:13:13.043' AS DateTime), CAST(N'2018-05-20T21:28:16.890' AS DateTime), 7, 1, 0, 1447000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (62, CAST(N'2018-05-05T08:32:54.087' AS DateTime), CAST(N'2018-05-05T08:49:07.870' AS DateTime), 3, 1, 0, 22000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (63, CAST(N'2018-05-05T08:33:09.857' AS DateTime), CAST(N'2018-05-20T15:25:11.937' AS DateTime), 9, 1, 0, 130000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (64, CAST(N'2018-05-05T08:34:44.767' AS DateTime), CAST(N'2018-05-05T08:50:14.100' AS DateTime), 1, 1, 0, 294000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (65, CAST(N'2018-05-05T08:50:32.917' AS DateTime), CAST(N'2018-05-13T22:38:54.207' AS DateTime), 1, 1, 0, 22000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (66, CAST(N'2018-05-20T15:25:15.653' AS DateTime), CAST(N'2018-05-20T15:25:25.633' AS DateTime), 2, 1, 0, 509000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (67, CAST(N'2018-05-20T21:28:22.817' AS DateTime), CAST(N'2018-05-20T21:28:27.483' AS DateTime), 8, 1, 0, 50000)
INSERT [dbo].[Bill] ([ID], [TimeCheckIn], [TimeCheckOut], [IDTable], [Status], [Discount], [TotalPrice]) VALUES (68, CAST(N'2018-05-20T21:31:19.310' AS DateTime), CAST(N'2018-05-20T21:31:34.367' AS DateTime), 2, 1, 0, 337000)
SET IDENTITY_INSERT [dbo].[Bill] OFF
SET IDENTITY_INSERT [dbo].[BillInfo] ON 

INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (1, 1, 1, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (2, 1, 8, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (3, 2, 8, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (4, 2, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (5, 3, 11, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (6, 3, 17, 5)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (7, 4, 1, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (8, 5, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (9, 6, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (10, 7, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (11, 8, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (12, 8, 8, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (13, 5, 11, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (14, 5, 9, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (15, 10, 5, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (16, 11, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (17, 11, 9, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (18, 9, 9, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (19, 9, 11, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (20, 9, 20, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (21, 13, 20, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (22, 13, 17, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (23, 13, 18, 12)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (24, 14, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (25, 15, 28, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (26, 16, 1, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (27, 17, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (28, 17, 10, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (29, 12, 10, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (30, 19, 10, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (31, 20, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (32, 21, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (33, 22, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (34, 22, 7, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (35, 23, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (36, 24, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (37, 25, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (38, 26, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (39, 27, 8, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (40, 28, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (41, 29, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (42, 30, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (43, 31, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (44, 32, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (45, 33, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (46, 34, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (47, 35, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (48, 36, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (49, 37, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (50, 38, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (51, 39, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (52, 40, 1, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (53, 41, 25, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (54, 37, 5, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (55, 42, 17, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (56, 42, 18, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (57, 42, 15, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (58, 43, 27, 11)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (59, 44, 26, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (60, 44, 27, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (61, 45, 3, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (62, 46, 26, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (63, 47, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (64, 47, 9, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (65, 47, 22, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (66, 48, 26, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (67, 49, 15, 24)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (68, 49, 19, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (69, 49, 9, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (70, 50, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (71, 51, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (72, 51, 10, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (73, 52, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (74, 53, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (75, 54, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (76, 55, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (78, 56, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (79, 57, 21, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (80, 57, 22, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (81, 59, 22, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (82, 60, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (83, 58, 9, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (84, 58, 21, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (85, 58, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (86, 63, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (87, 64, 1, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (88, 64, 9, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (89, 64, 20, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (90, 64, 15, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (91, 62, 16, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (92, 65, 16, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (93, 66, 1, 2)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (94, 66, 9, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (95, 66, 25, 1)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (96, 61, 10, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (97, 61, 5, 5)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (98, 61, 25, 5)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (99, 61, 26, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (100, 67, 26, 1)
GO
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (101, 68, 10, 3)
INSERT [dbo].[BillInfo] ([ID], [IDBill], [IDFood], [Count]) VALUES (102, 68, 13, 2)
SET IDENTITY_INSERT [dbo].[BillInfo] OFF
SET IDENTITY_INSERT [dbo].[ChiTieu] ON 

INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (1, N'Khác                                                                                                ', N'                                                                                                    ', CAST(N'2017-12-23T22:12:55.947' AS DateTime), 1)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (2, N'Khác                                                                                                ', N'                                                                                                    ', CAST(N'2017-12-23T22:17:41.723' AS DateTime), 2)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (3, N'Khác                                                                                                ', N'                                                                                                    ', CAST(N'2017-12-23T22:19:56.287' AS DateTime), 2)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (4, N'Sửa chữa trang thiết bị                                                                             ', N'thay bóng đèn số 3                                                                                  ', CAST(N'2018-01-03T09:51:53.197' AS DateTime), 120000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (5, N'Sửa chữa trang thiết bị                                                                             ', N'Sửa vòi nước nhà bếp                                                                                ', CAST(N'2018-01-03T11:14:33.790' AS DateTime), 50000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (6, N'Đi chợ                                                                                              ', N'Mua nguyên liệu                                                                                     ', CAST(N'2018-01-03T11:15:05.790' AS DateTime), 1500000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (7, N'Đi chợ', N'Đi chợ sáng t5', CAST(N'2018-05-20T21:28:54.077' AS DateTime), 12000000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (8, N'Sửa chữa trang thiết bị', N'Thay bóng đèn', CAST(N'2018-05-20T21:29:16.250' AS DateTime), 3200000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (9, N'Đi chợ', N'Thay bóng đèn', CAST(N'2018-05-20T21:29:30.127' AS DateTime), 3200000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (10, N'Khác', N'Tiếp khách', CAST(N'2018-05-20T21:30:05.393' AS DateTime), 5400000)
INSERT [dbo].[ChiTieu] ([ID], [Category], [Info], [Ngay], [SoTien]) VALUES (11, N'Khác', N'Tiếp khách', CAST(N'2018-05-20T21:30:10.923' AS DateTime), 5400000)
SET IDENTITY_INSERT [dbo].[ChiTieu] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (1, N'Mực xào xả ớt ', 1, 130000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (2, N'Nghêu hấp xả', 1, 50000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (3, N'Bò', 3, 89000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (4, N'Cơm chiên Dương Châu', 1, 150000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (5, N'7 up', 2, 20000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (6, N'Coca', 2, 10000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (7, N'Sá xị', 2, 15000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (8, N'Mắt cá ngừ', 1, 150000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (9, N'Tôm nướng', 1, 69000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (10, N'Ghẹ luộc chấm mắm tôm', 1, 99000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (11, N'Ốc bưu hấp gừng', 1, 50000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (12, N'Cá chép hông khói', 1, 79000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (13, N'Number One', 2, 20000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (14, N'Sting', 2, 19000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (15, N'Tiger', 2, 25000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (16, N'Strong Bow', 2, 22000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (17, N'333', 2, 15000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (18, N'Haniken', 2, 30000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (19, N'Lẩu Thái', 3, 200000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (20, N'Lấu Nấm Hải sản', 3, 70000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (21, N'Lẩu cá kèo', 3, 70500)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (22, N'Lẩu chay', 3, 50000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (23, N'Lẩu thập cẩm', 3, 101000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (24, N'Lẩu cá ngừ', 3, 250000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (25, N'Voi xào me', 4, 180000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (26, N'Cháo rắn mối', 4, 50000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (27, N'Thỏ chỉ', 4, 320000)
INSERT [dbo].[Food] ([ID], [Name], [IDCategory], [Price]) VALUES (28, N'Heo rừng hông khói', 4, 180000)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[FoodCategory] ON 

INSERT [dbo].[FoodCategory] ([ID], [Name]) VALUES (1, N'Hải Sản')
INSERT [dbo].[FoodCategory] ([ID], [Name]) VALUES (2, N'Thức uống')
INSERT [dbo].[FoodCategory] ([ID], [Name]) VALUES (3, N'Lẩu')
INSERT [dbo].[FoodCategory] ([ID], [Name]) VALUES (4, N'Món Rừng')
SET IDENTITY_INSERT [dbo].[FoodCategory] OFF
SET IDENTITY_INSERT [dbo].[FoodTable] ON 

INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (1, N'Bàn 1', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (2, N'Bàn 2', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (3, N'Bàn 3', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (4, N'Bàn 4', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (5, N'Bàn 5', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (6, N'Bàn 6', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (7, N'Bàn 7', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (8, N'Bàn 8', N'Trống', N'VIP')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (9, N'Bàn 9', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (10, N'Bàn 10', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (15, N'Bàn 11', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (16, N'Bàn 12', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (17, N'Bàn 13', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (18, N'Bàn 14', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (19, N'Bàn 15', N'Trống', N'Normal')
INSERT [dbo].[FoodTable] ([ID], [Name], [Status], [tabletype]) VALUES (20, N'Bàn 16', N'Trống', N'Normal')
SET IDENTITY_INSERT [dbo].[FoodTable] OFF
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (1, N'2342', N'23423', CAST(N'2018-01-06T15:11:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (1, N'Việt', N'0934773909', CAST(N'2018-01-13T08:44:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (1, N'Việt', N'093238232', CAST(N'2018-01-18T09:48:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (1, N'Cao Việt', N'09032352332', CAST(N'2018-05-20T21:24:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (2, N'Tuyền', N'0121 342 500', CAST(N'2018-01-04T05:15:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (2, N'Tuyền', N'0121 342 500', CAST(N'2018-01-04T09:15:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (4, N'Vi', N'0121 342 555', CAST(N'2018-01-04T09:15:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (4, N'Minh Trung', N'09023783666', CAST(N'2018-05-20T02:24:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (4, N'Minh Trung', N'09023783666', CAST(N'2018-05-20T21:24:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (6, N'Việt', N'0121 342 500', CAST(N'2018-01-03T12:15:00.000' AS DateTime), N'VIP       ')
INSERT [dbo].[TableOrder] ([IDTable], [TableName], [SDTNguoiDat], [TimeOrder], [TableOrderType]) VALUES (15, N'Tiến Đạt', N'01674398355', CAST(N'2018-05-20T21:24:00.000' AS DateTime), N'Normal    ')
ALTER TABLE [dbo].[Account] ADD  DEFAULT ('staff') FOR [Password]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__TimeCheckI__1367E606]  DEFAULT (getdate()) FOR [TimeCheckIn]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__Status__145C0A3F]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__Discount__15502E78]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF__Bill__TotalPrice__164452B1]  DEFAULT ((0)) FOR [TotalPrice]
GO
ALTER TABLE [dbo].[BillInfo] ADD  DEFAULT ((1)) FOR [Count]
GO
ALTER TABLE [dbo].[FoodTable] ADD  DEFAULT ('Normal') FOR [tabletype]
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [Bill_Table] FOREIGN KEY([IDTable])
REFERENCES [dbo].[FoodTable] ([ID])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [Bill_Table]
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [BillInFo_Bill] FOREIGN KEY([IDBill])
REFERENCES [dbo].[Bill] ([ID])
GO
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [BillInFo_Bill]
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [BillInFo_Food] FOREIGN KEY([IDFood])
REFERENCES [dbo].[Food] ([ID])
GO
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [BillInFo_Food]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [Food_FoodCategory] FOREIGN KEY([IDCategory])
REFERENCES [dbo].[FoodCategory] ([ID])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [Food_FoodCategory]
GO
/****** Object:  StoredProcedure [dbo].[INSERTBill]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SET IDENTITY_INSERT [dbo].[FoodTable] OFF
--GO

--CREATE   Stored PROCdure
create   PROC [dbo].[INSERTBill]
@IDTable int 
AS
BEGIN
	INSERT INTO Bill (IDTable) values (@IDTable)
	update foodtable set status = N'Có Người' where id = @IDTable
END


GO
/****** Object:  StoredProcedure [dbo].[INSERTBillInfo]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROC [dbo].[INSERTBillInfo]
@IDBill int, @IDFood int, @Count int
AS
BEGIN

	DECLARE @isExistBillInfo int
	DECLARE @isCount int
	
	select @isExistBillInfo = id, @isCount = BillInfo.count 
	FROM BillInfo 
	WHERE idFood = @IDFood and idBill= @IDBill

	if(@isExistBillInfo > 0)
	BEGIN
	
		DECLARE @newCount int = @isCount + @count
		if(@newCount > 0)
			update BillInfo set BillInfo.count = @newCount WHERE idBill = @IDBill and idFood = @IDFood
		else
			DELETE BillInfo WHERE idBill = @IDBill and idFood = @IDFood
	END
	else
		INSERT INTO BillInfo (idBill , idFood, BillInfo.count) values (@IDBill, @IDFood, @count)
END



GO
/****** Object:  StoredProcedure [dbo].[SwitchTable]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC  [dbo].[SwitchTable]
@IDTable1 int, @IDTable2 int
as
BEGIN
	DECLARE @IDBill1 int
	DECLARE @IDBill2 int

	select @IDBill1 = id FROM Bill WHERE idTable = @IDTable1 and status = 0
	select @IDBill2 = id FROM Bill WHERE idTable = @IDTable2 and status = 0

	DECLARE @flag1 int = 1
	DECLARE @flag2 int = 1

	if(@IDBill1 is null)
	BEGIN
		
		INSERT Bill (idTable , discount) values (@IDtable1 , 0)
		select @IDBill1 = id FROM Bill WHERE idTable = @IDTable1 and status = 0
	END

	

	if(@IDBill2 is null)
	BEGIN
		
		INSERT Bill (idTable , Discount) values (@IDtable2 , 0 )
		select @IDBill2 = id FROM Bill WHERE idTable = @IDTable2 and status = 0
	END

	select @flag1 = count(*) FROM BillInfo WHERE idBill = @IDBill1
	select @flag2 = count(*) FROM BillInfo WHERE idBill = @IDBill2

	print @flag1
	print @flag2


	select id into idBillInfoTable FROM BillInfo WHERE idBill = @IDBill1
	update BillInfo set idBill = @IDBill1 WHERE idBill = @IDBill2
	update BillInfo set idBill = @IDBill2 WHERE id in (select* FROM idBillInfoTable)

	drop table idBillInfoTable

	if(@flag1 = 0)
		update FoodTable set status = N'Trống' WHERE id = @IDTable2
	else
		update FoodTable set status = N'Có Người' WHERE id = @IDTable2
	if(@flag2 = 0)
		update FoodTable set status = N'Trống' WHERE id = @IDTable1
	else
		update FoodTable set status = N'Có Người' WHERE id = @IDTable1
END



GO
/****** Object:  StoredProcedure [dbo].[USP_ChiTieu]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_ChiTieu]
@Danhmuc nvarchar(50), @datefrom varchar(40), @dateto varchar(40)
as
begin
	if(@Danhmuc = '')
	begin
		select id,category,cast(ngay as date) as 'Ngay',info, sotien from ChiTieu
		where ChiTieu.Ngay <= @dateto and ChiTieu.Ngay > @datefrom
		return 
	end
	else
	begin
		select * from ChiTieu 
		where Category = @Danhmuc and ChiTieu.Ngay < @dateto and ChiTieu.Ngay > @datefrom
	end

end

GO
/****** Object:  StoredProcedure [dbo].[USP_DELETETable]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC  [dbo].[USP_DELETETable]
as
BEGIN
	DECLARE @NumCurrentTable int
	select @NumCurrentTable = count(*) FROM FoodTable

	INSERT FoodTable(name) values(N'Bàn ' + cast((@NumCurrentTable+1)as nvarchar(100)))
END



GO
/****** Object:  StoredProcedure [dbo].[USP_getListBillByDate]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_getListBillByDate]
@DateCheckIn date , @DateCheckOut date
as
begin
	select FoodTable.name as [Tên bàn], TimeCheckIn as [Thời gian vào], TimeCheckOut as[Thời gian ra], Discount as [Giảm giá], totalprice as[Tổng tiền] from Bill, FoodTable 
	where TimeCheckIn >= @DateCheckIn and TimeCheckOut <= @DateCheckOut and Bill.status = 1 and Bill.idTable = FoodTable.id
end

GO
/****** Object:  StoredProcedure [dbo].[USP_INSERTTable]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC  [dbo].[USP_INSERTTable]
as
BEGIN
	DECLARE @NumCurrentTable int
	select @NumCurrentTable = count(*) FROM FoodTable

	INSERT FoodTable(name) values(N'Bàn ' + cast((@NumCurrentTable+1)as nvarchar(100)))
END



GO
/****** Object:  StoredProcedure [dbo].[USP_login]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC  [dbo].[USP_login]
@userName nvarchar(100), @password nvarchar(1000)
as
BEGIN
	select* FROM account WHERE UserName = @userName and Password = @password
END


GO
/****** Object:  StoredProcedure [dbo].[USP_ReportThu]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_ReportThu]
@DateFrom varchar(40), @DateTo varchar(40), @Category nvarchar(20), @FoodName nvarchar(20), @TableType nvarchar(10)
as
begin
	--Mặc định
	if(@Category = '' and @FoodName = '' and @TableType = '')
	begin
		select c.Name N'Tên danh mục', sum (bi.Count) N'Số lần gọi', sum (bi.Count*f.Price) N'Tổng tiền'
		from Food f, FoodCategory c,BillInfo bi, Bill b
		where f.ID = bi.IDFood and c.ID = f.IDCategory and bi.IDBill = b.ID and TimeCheckIn >= @DateFrom and TimecheckOut <= @DateTo
		group by c.ID, c.Name
		order by sum (bi.Count) desc
		return
	end
	--Lọc theo tên danh mục
	if(@FoodName = '' and @TableType = '')
	begin 
		select f.Name N'Tên món ăn', sum (bi.Count) N'Số lần gọi', sum (bi.Count*f.Price) N'Tổng tiền'
		from Food f, FoodCategory c,BillInfo bi, Bill b
		where f.ID = bi.IDFood and c.ID = f.IDCategory and bi.IDBill = b.ID and c.Name = @Category and TimeCheckIn >= @DateFrom and TimecheckOut <= @DateTo
		group by f.ID, f.Name
		order by sum (bi.Count) desc
		return
	end
	--Lọc theo tên món
	if(@FoodName != '' and @TableType = '')
	begin
		select * 
		from (select * from Bill where TimeCheckIn >= @DateFrom and TimecheckOut <= @DateTo) as bill,BillInfo,Food,FoodCategory
		where Bill.id = BillInfo.idBill and  BillInfo.idFood = Food.id and Food.idCategory = FoodCategory.id and FoodCategory.Name = @Category
		return
	end
	--Lọc theo loại bàn
	if(@TableType!='' and @Category = '' and @FoodName = '')
	begin
		select ft.tabletype N'Loại bàn', sum (bi.Count) N'Số lần gọi', sum (bi.Count*f.Price) N'Tổng tiền'
		from FoodTable ft,Food f, FoodCategory c,BillInfo bi, Bill b
		where ft.tabletype = @TableType and ft.id = b.idTable and f.ID = bi.IDFood and c.ID = f.IDCategory and bi.IDBill = b.ID and TimeCheckIn >= @DateFrom and TimecheckOut <= @DateTo
		group by ft.tabletype
		order by sum (bi.Count) desc
		return
	end
	--Lọc theo Tên món và loại bàn
	--Lọc theo danh mục và loại bàn
	if(@TableType !='' and @Category != '' and @FoodName = '')
		select ft.tabletype N'Loại bàn', c.Name N'Danh mục', sum(bi.Count) N'Số lần gọi', sum (bi.Count*f.Price) N'Tổng tiền'
		from FoodTable ft,Food f, FoodCategory c,BillInfo bi, Bill b
		where ft.tabletype = @TableType and ft.id = b.idTable and f.ID = bi.IDFood and c.ID = f.IDCategory and bi.IDBill = b.ID and c.Name = @Category and TimeCheckIn >= @DateFrom and TimecheckOut <= @DateTo
		group by ft.tabletype, c.Name
		order by sum (bi.Count) desc
end

GO
/****** Object:  StoredProcedure [dbo].[USP_SeachBillByPage]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_SeachBillByPage]
@PageNum int, @DateCheckIn date , @DateCheckOut date
as
begin
	declare @PageRow int = 10
	declare @RowSelect int = @PageNum * @PageRow
	declare @Row int  = (@PageNum-1) * @PageRow

	;with BillShow as (select b.id, f.name as[Tên bàn], b.TimeCheckIn as[Thời gian vào], b.TimeCheckOut as[Thời gian ra], b.Discount as[Giảm giá], b.TotalPrice as[Tổng tiền] 
	from Bill as b, FoodTable as f 
	where TimeCheckIn >= @DateCheckIn and TimeCheckOut <= @DateCheckOut and b.status = 1 and b.idTable = f.id)
	
	select top (@RowSelect) [Tên bàn],[Thời gian vào],[Thời gian ra],[Giảm giá],[Tổng tiền]from BillShow where id not in (select top (@Row) id from BillShow)
	
end

GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 5/20/2018 9:35:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROC  [dbo].[USP_UpdateAccount]
@userName nvarchar(100), @displayName nvarchar(100), @pass nvarchar(100), @newpass nvarchar(100)
as
BEGIN

	DECLARE @passIsRight int
	select @passIsRight = count(*) FROM Account WHERE UserName = @userName and Password = @pass

	if(@passIsRight > 0)
	BEGIN
		
		if(@newpass = null or @newpass = '')
			update Account set DisplayName = @displayName WHERE UserName = @userName
		else
			update Account set DisplayName = @displayName, Password = @newpass WHERE UserName = @userName

	END

END


GO
USE [master]
GO
ALTER DATABASE [QuanLyCuaHangAnUong] SET  READ_WRITE 
GO
