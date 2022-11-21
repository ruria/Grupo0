USE [master]
GO
/****** Object:  Database [DB_GRUPO_0]    Script Date: 21/11/2022 9:57:00 ******/
CREATE DATABASE [DB_GRUPO_0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_GRUPO_0', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_GRUPO_0.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_GRUPO_0_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DB_GRUPO_0_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_GRUPO_0] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_GRUPO_0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_GRUPO_0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_GRUPO_0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DB_GRUPO_0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_GRUPO_0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_GRUPO_0] SET  MULTI_USER 
GO
ALTER DATABASE [DB_GRUPO_0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_GRUPO_0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_GRUPO_0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_GRUPO_0] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_GRUPO_0] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_GRUPO_0] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_GRUPO_0', N'ON'
GO
ALTER DATABASE [DB_GRUPO_0] SET QUERY_STORE = OFF
GO
USE [DB_GRUPO_0]
GO
/****** Object:  Table [dbo].[ASEGURADO]    Script Date: 21/11/2022 9:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASEGURADO](
	[ID_Poliza] [int] IDENTITY(1,1) NOT NULL,
	[ID_Aseguradora] [int] NOT NULL,
	[apellidos] [nvarchar](30) NOT NULL,
	[nombre] [nvarchar](30) NOT NULL,
	[direccion] [nvarchar](60) NOT NULL,
	[ciudad] [nvarchar](15) NOT NULL,
	[codpostal] [nvarchar](10) NULL,
	[pais] [nvarchar](15) NOT NULL,
	[telefono] [nvarchar](24) NOT NULL,
	[email] [nvarchar](24) NULL,
 CONSTRAINT [PK__ASEGURAD__FC37D34B43570145] PRIMARY KEY CLUSTERED 
(
	[ID_Poliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ASEGURADORA]    Script Date: 21/11/2022 9:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASEGURADORA](
	[ID_Aseguradora] [int] NOT NULL,
	[ID_Cobertura] [int] NOT NULL,
	[ciaseguros] [nvarchar](30) NOT NULL,
	[nombrecontacto] [nvarchar](20) NOT NULL,
	[apellidocontacto] [nvarchar](30) NOT NULL,
	[telefono] [nvarchar](30) NOT NULL,
	[direccion] [nvarchar](60) NOT NULL,
	[ciudad] [nvarchar](30) NOT NULL,
	[codpostal] [nvarchar](10) NULL,
	[pais] [nvarchar](15) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Aseguradora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COBERTURAS]    Script Date: 21/11/2022 9:57:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COBERTURAS](
	[ID_Cobertura] [int] IDENTITY(1,1) NOT NULL,
	[tipocobertura] [nvarchar](40) NOT NULL,
	[descripcion] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Cobertura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ASEGURADO] ON 

INSERT [dbo].[ASEGURADO] ([ID_Poliza], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (1008, 1, N'Gómez', N'Ana', N'Castilla, 10', N'Santander', N'39200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Poliza], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (2008, 2, N'Ruíz', N'Montse', N'Villa, 10', N'Marbella', N'29200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Poliza], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (3008, 3, N'Juan', N'Montserrat', N'Sevilla, 10', N'Sevilla', N'79200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
INSERT [dbo].[ASEGURADO] ([ID_Poliza], [ID_Aseguradora], [apellidos], [nombre], [direccion], [ciudad], [codpostal], [pais], [telefono], [email]) VALUES (4008, 2, N'Rodríguez', N'Andrés', N'Maravilla, 10', N'Málaga', N'49200', N'ESPAÑA', N'942 36 36 36', N'EMAIL@MAIL.COM')
SET IDENTITY_INSERT [dbo].[ASEGURADO] OFF
GO
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (1, 1, N'ALLIANZ', N'Alberto', N'Gilbert', N'(171) 456-7890', N'Palacios 3', N'London', N'39100', N'UK')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (2, 2, N'QUALITAS', N'Rocío', N'Alday', N'(91) 456-7890', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (3, 2, N'OCASO', N'Manolo', N'Puerta', N'(91) 456-7890', N'Alcalá 200', N'Madrid', N'25391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (4, 2, N'ETERNA ASEGURADORA', N'Raúl', N'Barrio Pesquero', N'(91) 456-7890', N'Capitán 45', N'Valencia', N'45391', N'ESPAÑA')
INSERT [dbo].[ASEGURADORA] ([ID_Aseguradora], [ID_Cobertura], [ciaseguros], [nombrecontacto], [apellidocontacto], [telefono], [direccion], [ciudad], [codpostal], [pais]) VALUES (5, 2, N'QUALITAS', N'Rocío', N'Alday', N'(91) 456-7890', N'Alday 3', N'Madrid', N'25391', N'ESPAÑA')
GO
SET IDENTITY_INSERT [dbo].[COBERTURAS] ON 

INSERT [dbo].[COBERTURAS] ([ID_Cobertura], [tipocobertura], [descripcion]) VALUES (1, N'Casa', N'Siniestros en domicilios y edificios')
INSERT [dbo].[COBERTURAS] ([ID_Cobertura], [tipocobertura], [descripcion]) VALUES (2, N'Automóvil', N'Siniestros en vehículos particulares')
INSERT [dbo].[COBERTURAS] ([ID_Cobertura], [tipocobertura], [descripcion]) VALUES (3, N'Moto', N'Siniestros con motocicletas')
INSERT [dbo].[COBERTURAS] ([ID_Cobertura], [tipocobertura], [descripcion]) VALUES (4, N'Vida', N'Seguros de vida')
SET IDENTITY_INSERT [dbo].[COBERTURAS] OFF
GO
ALTER TABLE [dbo].[ASEGURADORA]  WITH CHECK ADD  CONSTRAINT [FK_ASEGURADORA_COBERTURAS] FOREIGN KEY([ID_Cobertura])
REFERENCES [dbo].[COBERTURAS] ([ID_Cobertura])
GO
ALTER TABLE [dbo].[ASEGURADORA] CHECK CONSTRAINT [FK_ASEGURADORA_COBERTURAS]
GO
USE [master]
GO
ALTER DATABASE [DB_GRUPO_0] SET  READ_WRITE 
GO
