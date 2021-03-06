USE [GS_CodingChallenge]
GO
ALTER TABLE [dbo].[UserProjects] DROP CONSTRAINT [FK_dbo.UserProjects_dbo.Users_UserId]
GO
ALTER TABLE [dbo].[UserProjects] DROP CONSTRAINT [FK_dbo.UserProjects_dbo.Projects_ProjectId]
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/29/2019 6:50:22 PM ******/
DROP INDEX [IX_UserId] ON [dbo].[UserProjects]
GO
/****** Object:  Index [IX_ProjectId]    Script Date: 5/29/2019 6:50:22 PM ******/
DROP INDEX [IX_ProjectId] ON [dbo].[UserProjects]
GO
/****** Object:  Table [dbo].[UserProjects]    Script Date: 5/29/2019 6:50:22 PM ******/
DROP TABLE [dbo].[UserProjects]
GO
/****** Object:  Table [dbo].[UserProjects]    Script Date: 5/29/2019 6:50:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProjects](
	[UserId] [int] NOT NULL,
	[ProjectId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[AssignedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserProjects] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 1, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 2, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 3, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 4, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (1, 5, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 6, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 7, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 8, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 9, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (2, 10, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 11, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 12, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 13, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 14, 0, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
INSERT [dbo].[UserProjects] ([UserId], [ProjectId], [IsActive], [AssignedDate]) VALUES (3, 15, 1, CAST(N'2019-02-03T00:00:00.000' AS DateTime))
/****** Object:  Index [IX_ProjectId]    Script Date: 5/29/2019 6:50:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProjectId] ON [dbo].[UserProjects]
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserId]    Script Date: 5/29/2019 6:50:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[UserProjects]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserProjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProjects_dbo.Projects_ProjectId] FOREIGN KEY([ProjectId])
REFERENCES [dbo].[Projects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProjects] CHECK CONSTRAINT [FK_dbo.UserProjects_dbo.Projects_ProjectId]
GO
ALTER TABLE [dbo].[UserProjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserProjects_dbo.Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserProjects] CHECK CONSTRAINT [FK_dbo.UserProjects_dbo.Users_UserId]
GO
