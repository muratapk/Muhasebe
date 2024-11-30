USE [master]
GO
/****** Object:  Database [muhasebe]    Script Date: 30.11.2024 18:44:48 ******/
CREATE DATABASE [muhasebe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'muhasebe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\muhasebe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'muhasebe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\muhasebe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [muhasebe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [muhasebe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [muhasebe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [muhasebe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [muhasebe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [muhasebe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [muhasebe] SET ARITHABORT OFF 
GO
ALTER DATABASE [muhasebe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [muhasebe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [muhasebe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [muhasebe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [muhasebe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [muhasebe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [muhasebe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [muhasebe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [muhasebe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [muhasebe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [muhasebe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [muhasebe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [muhasebe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [muhasebe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [muhasebe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [muhasebe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [muhasebe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [muhasebe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [muhasebe] SET  MULTI_USER 
GO
ALTER DATABASE [muhasebe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [muhasebe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [muhasebe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [muhasebe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [muhasebe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [muhasebe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [muhasebe] SET QUERY_STORE = OFF
GO
USE [muhasebe]
GO
/****** Object:  Table [dbo].[Firma]    Script Date: 30.11.2024 18:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[VergiNo] [int] NULL,
	[Adres] [nvarchar](max) NULL,
	[Tel] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Firma] ON 

INSERT [dbo].[Firma] ([Id], [Ad], [VergiNo], [Adres], [Tel]) VALUES (2, N'Furkan', 456, N'Paris', 456)
SET IDENTITY_INSERT [dbo].[Firma] OFF
GO
USE [master]
GO
ALTER DATABASE [muhasebe] SET  READ_WRITE 
GO
