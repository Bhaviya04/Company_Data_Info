USE [master]
GO
/****** Object:  Database [MVC_Entity_Framework]    Script Date: 2/15/2018 7:31:26 PM ******/
CREATE DATABASE [MVC_Entity_Framework]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MVC_Entity_Framework', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MVC_Entity_Framework.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MVC_Entity_Framework_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\MVC_Entity_Framework_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MVC_Entity_Framework] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MVC_Entity_Framework].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MVC_Entity_Framework] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET ARITHABORT OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [MVC_Entity_Framework] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MVC_Entity_Framework] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MVC_Entity_Framework] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MVC_Entity_Framework] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MVC_Entity_Framework] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MVC_Entity_Framework] SET  MULTI_USER 
GO
ALTER DATABASE [MVC_Entity_Framework] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MVC_Entity_Framework] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MVC_Entity_Framework] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MVC_Entity_Framework] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [MVC_Entity_Framework]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/15/2018 7:31:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [varchar](max) NOT NULL,
	[CustomerCity] [varchar](max) NOT NULL,
	[CustomerCountry] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Staffs]    Script Date: 2/15/2018 7:31:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Staffs](
	[StaffId] [int] NOT NULL,
	[StaffName] [varchar](max) NOT NULL,
	[StaffCity] [varchar](max) NOT NULL,
	[StaffCountry] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Staffs] PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerCity], [CustomerCountry]) VALUES (1, N'Bhaviya', N'San Jose', N'United States')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [CustomerCity], [CustomerCountry]) VALUES (2, N'Arjun', N'Mumbai', N'India')
INSERT [dbo].[Staffs] ([StaffId], [StaffName], [StaffCity], [StaffCountry]) VALUES (1, N'Akshay', N'Delhi', N'India')
INSERT [dbo].[Staffs] ([StaffId], [StaffName], [StaffCity], [StaffCountry]) VALUES (2, N'Ashwin', N'Fullerton', N'United States')
USE [master]
GO
ALTER DATABASE [MVC_Entity_Framework] SET  READ_WRITE 
GO
