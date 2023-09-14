USE [master]
GO
/****** Object:  Database [employee db]    Script Date: 9/13/2023 12:17:32 PM ******/
CREATE DATABASE [employee db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'employee db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\employee db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'employee db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\employee db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [employee db] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [employee db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [employee db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [employee db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [employee db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [employee db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [employee db] SET ARITHABORT OFF 
GO
ALTER DATABASE [employee db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [employee db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [employee db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [employee db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [employee db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [employee db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [employee db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [employee db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [employee db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [employee db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [employee db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [employee db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [employee db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [employee db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [employee db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [employee db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [employee db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [employee db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [employee db] SET  MULTI_USER 
GO
ALTER DATABASE [employee db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [employee db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [employee db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [employee db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [employee db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [employee db]
GO
/****** Object:  Table [dbo].[Employee table]    Script Date: 9/13/2023 12:17:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee table](
	[employee_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](200) NULL,
	[Adress] [varchar](200) NULL,
	[Mobile_num] [varchar](200) NULL,
 CONSTRAINT [PK_Employee table] PRIMARY KEY CLUSTERED 
(
	[employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [employee db] SET  READ_WRITE 
GO
