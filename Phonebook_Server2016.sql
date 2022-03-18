USE [master]
GO
CREATE DATABASE [Phonebook]
 CONTAINMENT = NONE
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Phonebook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Phonebook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Phonebook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Phonebook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Phonebook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Phonebook] SET ARITHABORT OFF 
GO
ALTER DATABASE [Phonebook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Phonebook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Phonebook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Phonebook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Phonebook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Phonebook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Phonebook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Phonebook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Phonebook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Phonebook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Phonebook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Phonebook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Phonebook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Phonebook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Phonebook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Phonebook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Phonebook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Phonebook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Phonebook] SET  MULTI_USER 
GO
ALTER DATABASE [Phonebook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Phonebook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Phonebook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Phonebook] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Phonebook] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Phonebook', N'ON'
GO
ALTER DATABASE [Phonebook] SET QUERY_STORE = OFF
GO
USE [Phonebook]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 19.3.2022 02:18:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [nchar](15) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (1, N'Tugg', N'Speedman', N'5(462) 656 6568')
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (2, N'Kirk', N'Lazarus', N'2(654) 645 4645')
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (3, N'Jeff', N'Portnoy', N'6(548) 516 4452')
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (4, N'Rick', N'Peck', N'2(568) 484 6846')
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (5, N'Damien', N'Cockburn', N'3(846) 846 8468')
GO
INSERT [dbo].[Contacts] ([ContactId], [FirstName], [LastName], [PhoneNumber]) VALUES (6, N'Les', N'Grossman', N'2(365) 656 8446')
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
USE [master]
GO
ALTER DATABASE [Phonebook] SET  READ_WRITE 
GO