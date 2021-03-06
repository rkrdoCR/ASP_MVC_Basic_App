USE [GS_CodingChallenge]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/29/2019 6:50:22 PM ******/
DROP TABLE [dbo].[Projects]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 5/29/2019 6:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Credits] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Projects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (1, CAST(N'2020-05-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (2, CAST(N'2018-03-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (3, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (4, CAST(N'2018-05-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (5, CAST(N'2020-06-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (6, CAST(N'2018-07-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (7, CAST(N'2020-08-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (8, CAST(N'2020-09-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (9, CAST(N'2018-10-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (10, CAST(N'2018-11-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 10)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (11, CAST(N'2020-12-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 11)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (12, CAST(N'2019-02-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 12)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (13, CAST(N'2019-03-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 13)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (14, CAST(N'2020-04-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 14)
INSERT [dbo].[Projects] ([Id], [StartDate], [EndDate], [Credits]) VALUES (15, CAST(N'2020-05-01T00:00:00.000' AS DateTime), CAST(N'2021-02-01T00:00:00.000' AS DateTime), 15)
SET IDENTITY_INSERT [dbo].[Projects] OFF
