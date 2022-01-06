USE [master]
GO
/****** Object:  Database [FUCapstoneResult]    Script Date: 1/7/2022 12:05:04 AM ******/
CREATE DATABASE [FUCapstoneResult]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPTResultCapstone', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\FPTResultCapstone.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FPTResultCapstone_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQL2019EXP\MSSQL\DATA\FPTResultCapstone_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FUCapstoneResult] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FUCapstoneResult].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ARITHABORT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FUCapstoneResult] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FUCapstoneResult] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FUCapstoneResult] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FUCapstoneResult] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FUCapstoneResult] SET  MULTI_USER 
GO
ALTER DATABASE [FUCapstoneResult] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FUCapstoneResult] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FUCapstoneResult] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FUCapstoneResult] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FUCapstoneResult] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FUCapstoneResult] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FUCapstoneResult] SET QUERY_STORE = OFF
GO
USE [FUCapstoneResult]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[InstructorID] [nvarchar](50) NOT NULL,
	[InstructorName] [nvarchar](200) NOT NULL,
	[InstructorImage] [ntext] NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Majors]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[MajorID] [nvarchar](50) NOT NULL,
	[MajorName] [nvarchar](200) NOT NULL,
	[MajorImage] [ntext] NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posts]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posts](
	[PostID] [nvarchar](50) NOT NULL,
	[PostTitle] [nvarchar](500) NOT NULL,
	[PostDate] [date] NOT NULL,
	[PostAuthor] [nvarchar](200) NOT NULL,
	[PostDescription] [ntext] NOT NULL,
	[PostImage] [ntext] NOT NULL,
	[LastEditedUser] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Posts] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectID] [nvarchar](50) NOT NULL,
	[ProjectName] [nvarchar](200) NOT NULL,
	[ProjectDescription] [ntext] NOT NULL,
	[ProjectImage] [ntext] NULL,
	[ProjectScore] [float] NOT NULL,
	[MajorID] [nvarchar](50) NOT NULL,
	[SemesterID] [nvarchar](50) NOT NULL,
	[TeamID] [nvarchar](50) NOT NULL,
	[InstructorID] [nvarchar](50) NOT NULL,
	[PostID] [nvarchar](50) NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semesters]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semesters](
	[SemesterID] [nvarchar](50) NOT NULL,
	[SemesterName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Semesters] PRIMARY KEY CLUSTERED 
(
	[SemesterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [nvarchar](50) NOT NULL,
	[StudentName] [nvarchar](250) NOT NULL,
	[MajorID] [nvarchar](50) NOT NULL,
	[StudentImage] [ntext] NOT NULL,
	[TeamID] [nvarchar](50) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagDetails]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagDetails](
	[TagDetailID] [nvarchar](50) NOT NULL,
	[TagDetailName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TagDetails] PRIMARY KEY CLUSTERED 
(
	[TagDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[PostID] [nvarchar](50) NOT NULL,
	[TagDetailID] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC,
	[TagDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teams]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[TeamID] [nvarchar](50) NOT NULL,
	[TeamName] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Teams] PRIMARY KEY CLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](200) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[UserStatusID] [int] NOT NULL,
	[UserImage] [nchar](10) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Password] [ntext] NOT NULL,
	[OTP] [nvarchar](6) NULL,
	[RoleID] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatus]    Script Date: 1/7/2022 12:05:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatus](
	[UserStatusID] [int] IDENTITY(1,1) NOT NULL,
	[UserStatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserStatus] PRIMARY KEY CLUSTERED 
(
	[UserStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Instructors] ([InstructorID], [InstructorName], [InstructorImage]) VALUES (N'1', N'HoangNT', N'ok')
GO
INSERT [dbo].[Majors] ([MajorID], [MajorName], [MajorImage]) VALUES (N'1', N'KTMP', N'ok')
GO
INSERT [dbo].[Posts] ([PostID], [PostTitle], [PostDate], [PostAuthor], [PostDescription], [PostImage], [LastEditedUser]) VALUES (N'1', N'1', CAST(N'2021-01-01' AS Date), N'1', N'1', N'1', N'1')
GO
INSERT [dbo].[Projects] ([ProjectID], [ProjectName], [ProjectDescription], [ProjectImage], [ProjectScore], [MajorID], [SemesterID], [TeamID], [InstructorID], [PostID]) VALUES (N'1', N'1', N'okkkkk', N'ok', 10, N'1', N'1', N'1', N'1', N'1')
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleID], [RoleName]) VALUES (1, N'User')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[Semesters] ([SemesterID], [SemesterName]) VALUES (N'1', N'Spring 2021')
GO
INSERT [dbo].[Students] ([StudentID], [StudentName], [MajorID], [StudentImage], [TeamID]) VALUES (N'1', N'1', N'1', N'ok', N'1')
GO
INSERT [dbo].[Teams] ([TeamID], [TeamName]) VALUES (N'1', N'GaoTeam')
GO
INSERT [dbo].[Users] ([UserID], [UserName], [DateCreated], [UserStatusID], [UserImage], [Email], [Password], [OTP], [RoleID]) VALUES (N'1', N'1', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 2, N'1         ', N'1', N'1', N'1', 1)
GO
SET IDENTITY_INSERT [dbo].[UserStatus] ON 

INSERT [dbo].[UserStatus] ([UserStatusID], [UserStatusName]) VALUES (2, N'Active')
SET IDENTITY_INSERT [dbo].[UserStatus] OFF
GO
ALTER TABLE [dbo].[Posts]  WITH CHECK ADD  CONSTRAINT [FK_Posts_Users] FOREIGN KEY([LastEditedUser])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Posts] CHECK CONSTRAINT [FK_Posts_Users]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Instructors] FOREIGN KEY([InstructorID])
REFERENCES [dbo].[Instructors] ([InstructorID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Instructors]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Majors] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([MajorID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Majors]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Posts]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Semesters] FOREIGN KEY([SemesterID])
REFERENCES [dbo].[Semesters] ([SemesterID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Semesters]
GO
ALTER TABLE [dbo].[Projects]  WITH CHECK ADD  CONSTRAINT [FK_Projects_Teams1] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Projects] CHECK CONSTRAINT [FK_Projects_Teams1]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Majors] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([MajorID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Majors]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Teams] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Teams] ([TeamID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Teams]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_Posts] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_Posts]
GO
ALTER TABLE [dbo].[Tags]  WITH CHECK ADD  CONSTRAINT [FK_Tags_TagDetails1] FOREIGN KEY([TagDetailID])
REFERENCES [dbo].[TagDetails] ([TagDetailID])
GO
ALTER TABLE [dbo].[Tags] CHECK CONSTRAINT [FK_Tags_TagDetails1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserStatus] FOREIGN KEY([UserStatusID])
REFERENCES [dbo].[UserStatus] ([UserStatusID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserStatus]
GO
USE [master]
GO
ALTER DATABASE [FUCapstoneResult] SET  READ_WRITE 
GO
