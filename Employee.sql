USE [master]
GO
/****** Object:  Database [Employee System]    Script Date: 14/06/2020 04:25:09 ص ******/
CREATE DATABASE [Employee System]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Employee System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Employee System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Employee System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Employee System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Employee System] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Employee System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Employee System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Employee System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Employee System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Employee System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Employee System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Employee System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Employee System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Employee System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Employee System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Employee System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Employee System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Employee System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Employee System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Employee System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Employee System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Employee System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Employee System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Employee System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Employee System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Employee System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Employee System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Employee System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Employee System] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Employee System] SET  MULTI_USER 
GO
ALTER DATABASE [Employee System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Employee System] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Employee System] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Employee System] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Employee System] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Employee System] SET QUERY_STORE = OFF
GO
USE [Employee System]
GO
/****** Object:  Table [dbo].[tb Departments]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Departments](
	[Dept-Id] [int] NOT NULL,
	[Dept-name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_td Departments] PRIMARY KEY CLUSTERED 
(
	[Dept-Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb Dept-Emp]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Dept-Emp](
	[Emp-no] [int] NULL,
	[Dept-Id] [int] NULL,
	[From-Date] [date] NULL,
	[To-Date] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb Dept-Manager]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Dept-Manager](
	[Dept-Id] [int] NOT NULL,
	[Emp-no] [int] NOT NULL,
	[From-Date] [date] NOT NULL,
	[To Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb Employees]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Employees](
	[Emp-no] [int] NOT NULL,
	[Date of Birth] [date] NOT NULL,
	[First-name] [varchar](14) NOT NULL,
	[Last name] [varchar](16) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Hire-date] [date] NOT NULL,
 CONSTRAINT [PK_td Employees] PRIMARY KEY CLUSTERED 
(
	[Emp-no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb Salaries]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Salaries](
	[Emp-no] [int] NOT NULL,
	[Salary] [int] NOT NULL,
	[From-Date] [date] NOT NULL,
	[To-Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb Titles]    Script Date: 14/06/2020 04:25:10 ص ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb Titles](
	[Emp-no] [int] NOT NULL,
	[Title] [varchar](50) NOT NULL,
	[From-Date] [date] NOT NULL,
	[To-Date] [date] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tb Departments] ([Dept-Id], [Dept-name]) VALUES (1, N'Accounting')
GO
INSERT [dbo].[tb Departments] ([Dept-Id], [Dept-name]) VALUES (2, N'Sales')
GO
INSERT [dbo].[tb Departments] ([Dept-Id], [Dept-name]) VALUES (3, N'Production')
GO
INSERT [dbo].[tb Departments] ([Dept-Id], [Dept-name]) VALUES (7, N'Marketing')
GO
INSERT [dbo].[tb Dept-Emp] ([Emp-no], [Dept-Id], [From-Date], [To-Date]) VALUES (3, 1, CAST(N'1990-01-07' AS Date), CAST(N'1992-07-07' AS Date))
GO
INSERT [dbo].[tb Dept-Emp] ([Emp-no], [Dept-Id], [From-Date], [To-Date]) VALUES (5, 2, CAST(N'1995-02-08' AS Date), CAST(N'1997-08-08' AS Date))
GO
INSERT [dbo].[tb Dept-Emp] ([Emp-no], [Dept-Id], [From-Date], [To-Date]) VALUES (6, 3, CAST(N'2000-03-09' AS Date), CAST(N'2002-09-09' AS Date))
GO
INSERT [dbo].[tb Dept-Emp] ([Emp-no], [Dept-Id], [From-Date], [To-Date]) VALUES (7, 7, CAST(N'2005-04-10' AS Date), CAST(N'2007-10-10' AS Date))
GO
INSERT [dbo].[tb Dept-Manager] ([Dept-Id], [Emp-no], [From-Date], [To Date]) VALUES (1, 1, CAST(N'1995-01-05' AS Date), CAST(N'1997-01-05' AS Date))
GO
INSERT [dbo].[tb Dept-Manager] ([Dept-Id], [Emp-no], [From-Date], [To Date]) VALUES (2, 2, CAST(N'2002-07-06' AS Date), CAST(N'2002-07-06' AS Date))
GO
INSERT [dbo].[tb Dept-Manager] ([Dept-Id], [Emp-no], [From-Date], [To Date]) VALUES (3, 4, CAST(N'2006-08-07' AS Date), CAST(N'2008-08-07' AS Date))
GO
INSERT [dbo].[tb Dept-Manager] ([Dept-Id], [Emp-no], [From-Date], [To Date]) VALUES (7, 8, CAST(N'2016-09-08' AS Date), CAST(N'2018-09-08' AS Date))
GO
INSERT [dbo].[tb Employees] ([Emp-no], [Date of Birth], [First-name], [Last name], [Gender], [Hire-date]) VALUES (1, CAST(N'1975-06-17' AS Date), N'Ahmed', N'Omar', N'Male', CAST(N'2001-05-01' AS Date))
GO
INSERT [dbo].[tb Employees] ([Emp-no], [Date of Birth], [First-name], [Last name], [Gender], [Hire-date]) VALUES (2, CAST(N'1980-04-12' AS Date), N'Sara', N'Amr', N'Female', CAST(N'2015-07-06' AS Date))
GO
INSERT [dbo].[tb Employees] ([Emp-no], [Date of Birth], [First-name], [Last name], [Gender], [Hire-date]) VALUES (4, CAST(N'1970-08-06' AS Date), N'Mona', N'Hany', N'Female', CAST(N'2000-04-03' AS Date))
GO
INSERT [dbo].[tb Employees] ([Emp-no], [Date of Birth], [First-name], [Last name], [Gender], [Hire-date]) VALUES (8, CAST(N'1980-05-05' AS Date), N'Ali', N'Mohamed', N'Male', CAST(N'2005-01-07' AS Date))
GO
INSERT [dbo].[tb Salaries] ([Emp-no], [Salary], [From-Date], [To-Date]) VALUES (3, 2000, CAST(N'2020-01-07' AS Date), CAST(N'2020-01-08' AS Date))
GO
INSERT [dbo].[tb Salaries] ([Emp-no], [Salary], [From-Date], [To-Date]) VALUES (5, 2500, CAST(N'2020-02-08' AS Date), CAST(N'2020-02-09' AS Date))
GO
INSERT [dbo].[tb Salaries] ([Emp-no], [Salary], [From-Date], [To-Date]) VALUES (6, 3000, CAST(N'2020-03-06' AS Date), CAST(N'2020-03-07' AS Date))
GO
INSERT [dbo].[tb Salaries] ([Emp-no], [Salary], [From-Date], [To-Date]) VALUES (7, 3500, CAST(N'2020-04-04' AS Date), CAST(N'2020-04-05' AS Date))
GO
INSERT [dbo].[tb Titles] ([Emp-no], [Title], [From-Date], [To-Date]) VALUES (2, N'Manager', CAST(N'2000-07-06' AS Date), CAST(N'2002-07-06' AS Date))
GO
INSERT [dbo].[tb Titles] ([Emp-no], [Title], [From-Date], [To-Date]) VALUES (5, N'Director', CAST(N'2002-06-07' AS Date), CAST(N'2003-11-08' AS Date))
GO
INSERT [dbo].[tb Titles] ([Emp-no], [Title], [From-Date], [To-Date]) VALUES (6, N'Executive', CAST(N'2005-05-08' AS Date), CAST(N'2008-07-05' AS Date))
GO
INSERT [dbo].[tb Titles] ([Emp-no], [Title], [From-Date], [To-Date]) VALUES (7, N'Supervisor', CAST(N'2006-08-06' AS Date), CAST(N'2009-02-06' AS Date))
GO
USE [master]
GO
ALTER DATABASE [Employee System] SET  READ_WRITE 
GO
