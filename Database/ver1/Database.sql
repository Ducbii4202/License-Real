USE [master]
GO
/****** Object:  Database [License]    Script Date: 9/21/2023 2:11:52 PM ******/
CREATE DATABASE [License]

GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [License].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [License] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [License] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [License] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [License] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [License] SET ARITHABORT OFF 
GO
ALTER DATABASE [License] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [License] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [License] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [License] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [License] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [License] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [License] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [License] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [License] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [License] SET  DISABLE_BROKER 
GO
ALTER DATABASE [License] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [License] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [License] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [License] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [License] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [License] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [License] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [License] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [License] SET  MULTI_USER 
GO
ALTER DATABASE [License] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [License] SET DB_CHAINING OFF 
GO
ALTER DATABASE [License] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [License] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [License]
GO
/****** Object:  Table [dbo].[3rd]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[3rd](
	[feedbackId] [int] NOT NULL,
	[returnstatus] [nvarchar](50) NOT NULL,
	[datein] [datetime] NOT NULL,
	[dateout] [datetime] NOT NULL,
	[3rd_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[fullname] [nvarchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[role] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultant]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultant](
	[con_Id] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[feedbackId] [int] NOT NULL,
	[returnstatus] [nvarchar](50) NOT NULL,
	[datein] [datetime] NOT NULL,
	[dateout] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[examId] [int] NOT NULL,
	[Qlimit] [nchar](10) NOT NULL,
	[Time] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam Detail]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam Detail](
	[examId] [int] NOT NULL,
	[examtype] [nvarchar](50) NOT NULL,
	[estatus] [nvarchar](50) NOT NULL,
	[etime] [nvarchar](10) NOT NULL,
	[elogs] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberId] [int] NULL,
	[fullname] [nvarchar](50) NULL,
	[phone] [int] NULL,
	[adddress] [nvarchar](50) NULL,
	[km] [nchar](10) NULL,
	[schedule] [datetime] NULL,
	[password] [nchar](10) NULL,
	[role] [nchar](10) NULL,
	[status] [nchar](10) NULL,
	[license] [nchar](10) NULL,
	[email] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor](
	[mentorId] [int] NOT NULL,
	[Experience] [nvarchar](50) NOT NULL,
	[schedule] [nchar](10) NOT NULL,
	[role] [nchar](10) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](50) NOT NULL,
	[mentordate] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mentor Schedule]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mentor Schedule](
	[mentorsheduleId] [int] NOT NULL,
	[Monday] [nchar](10) NULL,
	[tuesday] [nchar](10) NULL,
	[wednesday] [nchar](10) NULL,
	[thurday] [nchar](10) NOT NULL,
	[friday] [nchar](10) NOT NULL,
	[saturday] [nchar](10) NOT NULL,
	[sunday] [nchar](10) NOT NULL,
	[memberdate] [nchar](10) NOT NULL,
	[mentorday] [nchar](10) NOT NULL,
	[checkId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[type] [nvarchar](50) NOT NULL,
	[date] [nchar](10) NOT NULL,
	[price] [float] NOT NULL,
	[pm_Id] [int] NOT NULL,
	[pm_total] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment Detail]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment Detail](
	[price] [float] NOT NULL,
	[pmd_status] [nvarchar](50) NOT NULL,
	[pmd_Id] [int] NOT NULL,
	[pmd] [nvarchar](50) NOT NULL,
	[memberId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[qtype] [nvarchar](50) NOT NULL,
	[qlimit] [nchar](10) NOT NULL,
	[qurl] [nchar](10) NOT NULL,
	[qanswer] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question Detail]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question Detail](
	[qId] [int] NOT NULL,
	[qurl] [nchar](10) NOT NULL,
	[qlimit] [nchar](10) NOT NULL,
	[qanswer] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 9/21/2023 2:11:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[fullname] [nvarchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[role] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [License] SET  READ_WRITE 
GO
