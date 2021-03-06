USE [GS_CodingChallenge]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/29/2019 6:50:22 PM ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/29/2019 6:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (1, N'Ricardo', N'Alfaro')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (2, N'Juan', N'Perez')
INSERT [dbo].[Users] ([Id], [FirstName], [LastName]) VALUES (3, N'John', N'Doe')
SET IDENTITY_INSERT [dbo].[Users] OFF
