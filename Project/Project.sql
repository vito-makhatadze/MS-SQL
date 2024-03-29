USE [master]
GO
/****** Object:  Database [prFootball]    Script Date: 07.06.2019 6:55:57 ******/
CREATE DATABASE [prFootball]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prFootball', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\prFootball.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'prFootball_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\prFootball_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [prFootball] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prFootball].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prFootball] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prFootball] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prFootball] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prFootball] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prFootball] SET ARITHABORT OFF 
GO
ALTER DATABASE [prFootball] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prFootball] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prFootball] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prFootball] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prFootball] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prFootball] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prFootball] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prFootball] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prFootball] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prFootball] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prFootball] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prFootball] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prFootball] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prFootball] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prFootball] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prFootball] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prFootball] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prFootball] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prFootball] SET  MULTI_USER 
GO
ALTER DATABASE [prFootball] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prFootball] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prFootball] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prFootball] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [prFootball] SET DELAYED_DURABILITY = DISABLED 
GO
USE [prFootball]
GO
/****** Object:  Schema [ftb]    Script Date: 07.06.2019 6:55:57 ******/
CREATE SCHEMA [ftb]
GO
/****** Object:  Table [ftb].[game]    Script Date: 07.06.2019 6:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ftb].[game](
	[game_id] [int] IDENTITY(1,1) NOT NULL,
	[game_home] [int] NOT NULL,
	[game_guest] [int] NOT NULL,
	[game_refere] [int] NOT NULL,
	[game_home_goal] [int] NOT NULL,
	[game_guest_goal] [int] NOT NULL,
 CONSTRAINT [PK_game] PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ftb].[refere]    Script Date: 07.06.2019 6:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ftb].[refere](
	[refere_id] [int] IDENTITY(1,1) NOT NULL,
	[refere_firstname] [nvarchar](50) NOT NULL,
	[refere_lastname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_refere] PRIMARY KEY CLUSTERED 
(
	[refere_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ftb].[stadion]    Script Date: 07.06.2019 6:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ftb].[stadion](
	[stadion_id] [int] IDENTITY(1,1) NOT NULL,
	[stadion_name] [nvarchar](50) NOT NULL,
	[stadion_capacity] [int] NOT NULL,
 CONSTRAINT [PK_stadion] PRIMARY KEY CLUSTERED 
(
	[stadion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [ftb].[team]    Script Date: 07.06.2019 6:55:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ftb].[team](
	[team_id] [int] IDENTITY(1,1) NOT NULL,
	[stadion_id] [int] NOT NULL,
	[team_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_team] PRIMARY KEY CLUSTERED 
(
	[team_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [ftb].[game] ON 

INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (1, 4, 16, 1, 3, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (2, 14, 2, 3, 2, 3)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (3, 7, 10, 5, 1, 2)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (4, 15, 9, 7, 2, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (5, 12, 11, 9, 0, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (6, 3, 13, 11, 0, 2)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (7, 1, 5, 11, 0, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (8, 8, 16, 2, 2, 1)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (9, 6, 4, 2, 0, 1)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (10, 2, 14, 4, 7, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (11, 10, 7, 6, 1, 4)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (12, 9, 15, 8, 3, 0)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (13, 11, 12, 10, 5, 1)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (14, 13, 3, 5, 1, 3)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (15, 5, 1, 11, 1, 3)
INSERT [ftb].[game] ([game_id], [game_home], [game_guest], [game_refere], [game_home_goal], [game_guest_goal]) VALUES (16, 16, 8, 9, 3, 1)
SET IDENTITY_INSERT [ftb].[game] OFF
SET IDENTITY_INSERT [ftb].[refere] ON 

INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (1, N'Antonio', N'Mateu Lahoz')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (2, N'Danny', N'Makkelie')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (3, N'Carlos', N'Dell Cerro')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (4, N'Clement', N'Turpin')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (5, N'Damir', N'Skomina')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (6, N'Felix', N'Brych')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (7, N'Felix', N'Zwayer')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (8, N'Bjorn', N'Kuipers')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (9, N'Cuneyt', N'Cakir')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (10, N'Szymon', N'Marciniak')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (11, N'Daniele', N'Orsato')
INSERT [ftb].[refere] ([refere_id], [refere_firstname], [refere_lastname]) VALUES (12, N'Gianluca', N'Rocchi')
SET IDENTITY_INSERT [ftb].[refere] OFF
SET IDENTITY_INSERT [ftb].[stadion] ON 

INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (1, N'Anfield', 54074)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (2, N'Etihad', 55097)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (3, N'Old Trafford', 76000)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (4, N'Hotspur', 62062)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (5, N'Allian Arena', 75000)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (6, N'signal iduna park', 81365)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (7, N'Johan Cruiff Arena', 54990)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (8, N'Stedio Olimpico', 72698)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (9, N'Allian Stadium', 41507)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (10, N'Santiago Bernabeu', 81044)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (11, N'Camp Nou', 99354)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (12, N'Groupama Arena', 22000)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (13, N'Le Parc Des Princes', 47929)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (14, N'Veltins Arena', 62271)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (15, N'Wanda Metropolitano', 67829)
INSERT [ftb].[stadion] ([stadion_id], [stadion_name], [stadion_capacity]) VALUES (16, N'Estadio Do Dragao', 50033)
SET IDENTITY_INSERT [ftb].[stadion] OFF
SET IDENTITY_INSERT [ftb].[team] ON 

INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (1, 1, N'Liverpool')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (2, 2, N'Manchester City')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (3, 3, N'Manchester United')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (4, 4, N'Tottenham')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (5, 5, N'Bayern')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (6, 6, N'Borusia Dortmund')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (7, 7, N'Ajax')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (8, 8, N'AS Roma')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (9, 9, N'Juventus')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (10, 10, N'Real Madrid')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (11, 11, N'Barselona')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (12, 12, N'Lyon')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (13, 13, N'Paris Saint-Germain')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (14, 14, N'Schalke')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (15, 15, N'Atletico Madrid')
INSERT [ftb].[team] ([team_id], [stadion_id], [team_name]) VALUES (16, 16, N'Fc Porto')
SET IDENTITY_INSERT [ftb].[team] OFF
ALTER TABLE [ftb].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_refere] FOREIGN KEY([game_refere])
REFERENCES [ftb].[refere] ([refere_id])
GO
ALTER TABLE [ftb].[game] CHECK CONSTRAINT [FK_game_refere]
GO
ALTER TABLE [ftb].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_team] FOREIGN KEY([game_home])
REFERENCES [ftb].[team] ([team_id])
GO
ALTER TABLE [ftb].[game] CHECK CONSTRAINT [FK_game_team]
GO
ALTER TABLE [ftb].[game]  WITH CHECK ADD  CONSTRAINT [FK_game_team1] FOREIGN KEY([game_guest])
REFERENCES [ftb].[team] ([team_id])
GO
ALTER TABLE [ftb].[game] CHECK CONSTRAINT [FK_game_team1]
GO
ALTER TABLE [ftb].[team]  WITH CHECK ADD  CONSTRAINT [FK_team_stadion] FOREIGN KEY([stadion_id])
REFERENCES [ftb].[stadion] ([stadion_id])
GO
ALTER TABLE [ftb].[team] CHECK CONSTRAINT [FK_team_stadion]
GO
USE [master]
GO
ALTER DATABASE [prFootball] SET  READ_WRITE 
GO
