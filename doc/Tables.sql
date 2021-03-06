/****** Object:  Table [dbo].[Domain]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Domain] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Subject] [nvarchar](200) NOT NULL,
	[Body] [nvarchar](max) NOT NULL,
	[Instruction] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Log]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Thread] [nvarchar](255) NOT NULL,
	[Level] [nvarchar](50) NOT NULL,
	[Logger] [nvarchar](255) NOT NULL,
	[Message] [nvarchar](4000) NOT NULL,
	[Exception] [nvarchar](2000) NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TraceLog]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraceLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Controller] [nvarchar](100) NOT NULL,
	[Action] [nvarchar](100) NOT NULL,
	[Message] [nvarchar](max) NULL,
	[PerformedOn] [datetime] NOT NULL,
	[PerformedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_AccessLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Active] [bit] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 3/8/2017 10:58:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Domain] ON 

GO
INSERT [dbo].[Domain] ([Id], [Name], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'domain1.org', NULL, CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe', CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe')
GO
INSERT [dbo].[Domain] ([Id], [Name], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'domain2.org', NULL, CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe', CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe')
GO
INSERT [dbo].[Domain] ([Id], [Name], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (3, N'domain3.org', NULL, CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe', CAST(N'2017-03-08 10:11:50.127' AS DateTime), N'johndoe')
GO
SET IDENTITY_INSERT [dbo].[Domain] OFF
GO
SET IDENTITY_INSERT [dbo].[EmailTemplate] ON 

GO
INSERT [dbo].[EmailTemplate] ([Id], [Name], [Description], [Subject], [Body], [Instruction], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (1, N'Add New User Notification', N'Email sent out to supervisors after a new user is added to the application.', N'Sample Application - New User [[[User_FullName]]] is added', N'<div style="font-family: Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 14px; color: #333333; direction: ltr; line-height: 20px;"><div style="font-family: Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 24px; color: #0078D7; line-height: 32px;">Dear Supervisor,</div><p style="font-family: Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 14px; color: #333333; line-height: 20px;"><strong>[[[User_FullName]]]</strong> is added to Sample Application. Please click [[[User_EditLink]]] to assign role to [[[User_FirstName]]].</p><p style="font-family: Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 14px; color: #333333; line-height: 20px;">If clicking the link above does not work, copy and paste the following URL in a new browser window instead.<br />[[[User_EditUrl]]]</p><p style="font-family: Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 14px; color: #333333; line-height: 20px;">Sincerely,<br /><strong>Sample Application</strong></p><div style="font-family: Segoe UI Semibold, Segoe WP Semibold, Segoe UI, Segoe WP, Segoe, Tahoma, Microsoft Sans Serif, Verdana, sans-serif; font-size: 10px; color: #666666; line-height: normal;">If you did not request this change, please contact help desk immediately.</div></div>', NULL, N'johndoe', CAST(N'2017-01-05 12:24:24.377' AS DateTime), N'johndoe', CAST(N'2017-01-05 12:24:24.377' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[EmailTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Developer')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Administrator')
GO
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'User')
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Setting] ON 

GO
INSERT [dbo].[Setting] ([Id], [Name], [Value]) VALUES (1, N'email.from.address', N'fromemail@example.com')
GO
INSERT [dbo].[Setting] ([Id], [Name], [Value]) VALUES (2, N'email.to.addresses', N'toemail1@example.com;toemail2@example.com')
GO
INSERT [dbo].[Setting] ([Id], [Name], [Value]) VALUES (3, N'email.smtp.host', N'gmail.example.com')
GO
INSERT [dbo].[Setting] ([Id], [Name], [Value]) VALUES (4, N'website.url', N'https://www.example.com')
GO
SET IDENTITY_INSERT [dbo].[Setting] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Active], [LastLoginDate], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (1, N'johndoe', N'John', N'Doe', 1, CAST(N'2017-03-08 10:13:56.543' AS DateTime), CAST(N'2017-02-03 10:00:53.063' AS DateTime), N'johndoe', CAST(N'2017-02-03 10:00:53.063' AS DateTime), N'johndoe')
GO
INSERT [dbo].[User] ([Id], [UserName], [FirstName], [LastName], [Active], [LastLoginDate], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (2, N'janiedoe', N'Janie', N'Doe', 1, CAST(N'2017-02-03 11:17:41.337' AS DateTime), CAST(N'2017-02-03 11:17:41.337' AS DateTime), N'johndoe', CAST(N'2017-02-03 11:17:41.337' AS DateTime), N'johndoe')
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (1, 1)
GO
INSERT [dbo].[UserRoles] ([UserId], [RoleId]) VALUES (2, 1)
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_Role]
GO
ALTER TABLE [dbo].[UserRoles]  WITH CHECK ADD  CONSTRAINT [FK_UserRoles_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserRoles] CHECK CONSTRAINT [FK_UserRoles_User]
GO
