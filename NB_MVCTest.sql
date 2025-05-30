USE [Users]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22-05-2025 18:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 22-05-2025 18:40:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[EmailId] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[BirthDate] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250522120258_AddSeedingDataUsers_2', N'9.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250522120716_AddSeedingDataUsers_3', N'9.0.5')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [FirstName], [EmailId], [UserName], [BirthDate]) VALUES (1, N'Nandini', N'Nandini@gmail.com', N'NB123', N'30/03/2000')
INSERT [dbo].[Users] ([Id], [FirstName], [EmailId], [UserName], [BirthDate]) VALUES (2, N'Shilpa', N'Shilpa@gmail.com', N'SH123', N'12/04/2002')
INSERT [dbo].[Users] ([Id], [FirstName], [EmailId], [UserName], [BirthDate]) VALUES (3, N'Rahul', N'Rahul@gmail.com', N'RR123', N'28/06/1999')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
